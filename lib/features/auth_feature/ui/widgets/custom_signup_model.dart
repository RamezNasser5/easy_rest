import 'package:easy_rest/core/routing/app_routing.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:go_router/go_router.dart';

class CustomSignupButton extends StatelessWidget {
  const CustomSignupButton({
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
          child: BlocBuilder<SignupCubit, SignupState>(
            builder: (context, state) {
              if (state is SignupLoading) {
                return const CircularProgressIndicator();
              } else if (state is SignupSuccess) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  FlutterPlatformAlert.showAlert(
                    windowTitle: 'Success',
                    text: state.message,
                  );
                });
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  GoRouter.of(context).go(AppRouting.kSignInRout);
                });
                return Text(state.message);
              } else if (state is SignupFailure) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  FlutterPlatformAlert.showAlert(
                    windowTitle: 'Error',
                    text: state.errormessage,
                  );
                });

                return const Text('Error Occurred',
                    style: TextStyle(color: Colors.red));
              }
              return Text(text);
            },
          ),
        ),
      ),
    );
  }
}
