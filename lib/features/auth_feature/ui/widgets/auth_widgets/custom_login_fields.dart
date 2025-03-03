import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/widgets/custom_button.dart';
import 'package:easy_rest/core/widgets/custom_text_field.dart';
import 'package:easy_rest/features/auth_feature/data/models/signin_model/sign_in_model.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/auth_widgets/custom_remeber_row.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/auth_widgets/custom_signup_row.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/auth_widgets/social_login_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLoginFields extends StatelessWidget {
  const CustomLoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    SignInModel signInModel = SignInModel();
    return Positioned(
      top: SizeConfig.height! * 0.34,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        width: SizeConfig.width,
        height: SizeConfig.height,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.height! * 0.03,
                right: SizeConfig.width! * 0.8,
              ),
              child: Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            CustomTextField(
              hintText: 'Email',
              icon: Icons.email,
              onChanged: (value) {
                signInModel.email = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.height! * 0.01,
                right: SizeConfig.width! * 0.7,
              ),
              child: Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            CustomTextField(
              hintText: 'Password',
              icon: Icons.password,
              onChanged: (value) {
                signInModel.password = value;
              },
            ),
            CustomRemeberRow(),
            CustomButton(
                text: 'Login',
                width: SizeConfig.defaultSize! * 30,
                height: SizeConfig.defaultSize! * 6,
                color: Consts.kPrimaryColor,
                onTap: () {
                  BlocProvider.of<SignInCubit>(context)
                      .signIn(signInModel: signInModel);
                }),
            CustomSignupRow(),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.height! * 0.01,
                right: SizeConfig.width! * 0.05,
              ),
              child: Text(
                'OR',
                style: TextStyle(
                  fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SocialLoginRow(),
          ],
        ),
      ),
    );
  }
}
