import 'package:easy_rest/features/auth_feature/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                return Text(state.message);
              } else if (state is SignupFailure) {
                return Text(state.errormessage);
              }
              return Text(text);
            },
          ),
        ),
      ),
    );
  }
}
