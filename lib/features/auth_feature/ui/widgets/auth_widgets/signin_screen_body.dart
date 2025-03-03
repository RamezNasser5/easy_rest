import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/auth_widgets/custom_login_fields.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/auth_widgets/custom_text_auth.dart';
import 'package:easy_rest/features/splach_feature/views/widgets/svg_assets.dart';
import 'package:flutter/material.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: SVGAssets(
            svgPath: 'assets/images/BG Asset.svg',
            width: SizeConfig.defaultSize! * 0.04,
            height: SizeConfig.defaultSize! * 0.05,
          ),
        ),
        CustomTextAuth(
          text: 'Log In',
          fontWeight: FontWeight.w700,
          fontSize: 30,
          top: SizeConfig.defaultSize! * 16,
          left: SizeConfig.width! * 0.4,
          color: Colors.white,
        ),
        CustomTextAuth(
          text: 'Please sign in to your existing account',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          top: SizeConfig.defaultSize! * 22,
          left: SizeConfig.width! * 0.16,
          color: Colors.white,
        ),
        CustomLoginFields(),
      ],
    );
  }
}
