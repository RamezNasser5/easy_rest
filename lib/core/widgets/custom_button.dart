import 'package:easy_rest/core/routing/app_routing.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.color,
    required this.onTap,
  });

  final String text;
  final double width;
  final double height;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        width: width,
        height: height,
        child: Center(
          child: BlocBuilder<SignInCubit, SignInState>(
            builder: (context, state) {
              if (state is SignInLoading) {
                return const CircularProgressIndicator();
              } else if (state is SignInSuccess) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  GoRouter.of(context).go(AppRouting.kHomeRout);
                });

                return Text('Login Success');
              } else if (state is SignInFailure) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  FlutterPlatformAlert.showAlert(
                    windowTitle: 'Error',
                    text: state.errorMessage,
                  );
                });

                return const Text('Error Occurred',
                    style: TextStyle(color: Colors.red));
              }
              return Text(text);
            },
          ),

          // child: Text(text),
        ),
      ),
    );
  }
}
