import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/widgets/custom_text_field.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/forget_password_ploc/forget_password_bloc.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/forget_password_widgets/custom_forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class CustomForgotPasswordFields extends StatelessWidget {
  CustomForgotPasswordFields({super.key});

  String email = '';

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        width: SizeConfig.width,
        height: SizeConfig.height! * 0.6,
        child: Column(
          children: [
            CustomTextField(
              hintText: 'email',
              icon: Icons.email,
              onChanged: (value) => email = value,
            ),
            CustomForgotButton(
              text: 'Send',
              width: SizeConfig.defaultSize! * 30,
              height: SizeConfig.defaultSize! * 6,
              color: Consts.kPrimaryColor,
              onTap: () => BlocProvider.of<ForgetPasswordBloc>(context).add(
                ForgetPasswordEventEvent(
                  email: email,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
