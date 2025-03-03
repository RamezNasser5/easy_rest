import 'package:easy_rest/core/routing/app_routing.dart';
import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRemeberRow extends StatefulWidget {
  const CustomRemeberRow({super.key});

  @override
  State<CustomRemeberRow> createState() => _CustomRemeberRowState();
}

class _CustomRemeberRowState extends State<CustomRemeberRow> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.width! * 0.02,
        bottom: SizeConfig.height! * 0.02,
      ),
      child: Row(
        children: [
          Checkbox(
              activeColor: Consts.kPrimaryColor,
              value: rememberMe,
              onChanged: (value) {
                setState(() {
                  rememberMe = value!;
                });
              }),
          Text('Remember me'),
          Spacer(),
          TextButton(
            onPressed: () {
              GoRouter.of(context).go(
                AppRouting.kForgotPasswordRout,
              );
            },
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Consts.kPrimaryColor,
                fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
