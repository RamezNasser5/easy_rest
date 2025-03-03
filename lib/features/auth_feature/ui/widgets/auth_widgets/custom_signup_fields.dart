import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/widgets/custom_text_field.dart';
import 'package:easy_rest/features/auth_feature/data/models/signup_models/signup_model.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/auth_widgets/custom_signup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignupFields extends StatelessWidget {
  const CustomSignupFields({super.key});

  @override
  Widget build(BuildContext context) {
    SignupModel signupModel = SignupModel();
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
                top: SizeConfig.height! * 0.01,
                right: SizeConfig.width! * 0.8,
              ),
              child: Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            CustomTextField(
              hintText: 'User Name',
              icon: Icons.person,
              onChanged: (value) {
                signupModel.username = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.height! * 0.005,
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
                signupModel.email = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(
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
                signupModel.password = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.height! * 0.01,
                right: SizeConfig.width! * 0.5,
              ),
              child: Text(
                'Re-Enter Password',
                style: TextStyle(
                  fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
            ),
            CustomTextField(
              hintText: 'Re-Enter Password',
              icon: Icons.password,
              onChanged: (value) {
                signupModel.passwordConfirmation = value;
              },
            ),
            CustomSignupButton(
              width: SizeConfig.width! * 0.8,
              height: SizeConfig.height! * 0.07,
              color: Consts.kPrimaryColor,
              onTap: () {
                BlocProvider.of<SignupCubit>(context)
                    .signUp(signupModel: signupModel);
              },
              text: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
