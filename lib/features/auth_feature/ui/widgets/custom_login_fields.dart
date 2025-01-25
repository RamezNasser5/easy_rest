import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/widgets/custom_button.dart';
import 'package:easy_rest/core/widgets/custom_text_field.dart';
import 'package:easy_rest/features/auth_feature/data/models/sign_in_model/sign_in_model.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/cubit/sign_in_cubit.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/custom_remeber_row.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/custom_signup_row.dart';
import 'package:easy_rest/features/splach_feature/views/widgets/svg_assets.dart';
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
              width: SizeConfig.width! * 0.8,
              height: SizeConfig.height! * 0.07,
              color: Consts.kPrimaryColor,
              onTap: () {
                BlocProvider.of<SignInCubit>(context)
                    .signIn(signInModel: signInModel);
              },
              text: 'Log In',
            ),
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

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        SizeConfig.defaultSize! * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SVGAssets(
            svgPath: 'assets/images/facebook.svg',
            width: 0.07,
            height: 0.07,
          ),
          const SVGAssets(
            svgPath: 'assets/images/tweeter.svg',
            width: 0.07,
            height: 0.07,
          ),
          const SVGAssets(
            svgPath: 'assets/images/apple.svg',
            width: 0.07,
            height: 0.07,
          ),
        ],
      ),
    );
  }
}
