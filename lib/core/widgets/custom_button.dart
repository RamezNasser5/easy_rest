import 'package:easy_rest/features/auth_feature/logic/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child: Center(child: BlocBuilder<SignInCubit, SignInState>(
          builder: (context, state) {
            if (state is SignInLoading) {
              return const CircularProgressIndicator();
            } else if (state is SignInSuccess) {
              return Text(state.token);
            } else if (state is SignInFailure) {
              return Text(state.errorMessage);
            }
            return Text(text);
          },
        )),
      ),
    );
  }
}
