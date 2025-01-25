import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomSignupRow extends StatelessWidget {
  const CustomSignupRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.height! * 0.02,
        left: SizeConfig.width! * 0.2,
      ),
      child: Row(
        children: [
          Text(
            'Don’t have an account?',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.width! * 0.04),
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Consts.kPrimaryColor,
                fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
