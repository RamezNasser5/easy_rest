import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/forget_password_ploc/forget_password_bloc.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/forgot_password_code_row.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/verify_code_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class CustomVerifyCodeFields extends StatelessWidget {
  CustomVerifyCodeFields({super.key});

  String code1 = '';
  String code2 = '';
  String code3 = '';
  String code4 = '';
  String code5 = '';
  String code6 = '';

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
            ForgotPasswordCodeRow(
              onChanged1: (value) {
                code1 = value;
              },
              onChanged2: (value) {
                code2 = value;
              },
              onChanged3: (value) {
                code3 = value;
              },
              onChanged4: (value) {
                code4 = value;
              },
              onChanged5: (value) {
                code5 = value;
              },
              onChanged6: (value) {
                code6 = value;
              },
            ),
            VerifyCodeButton(
                text: 'Verify',
                width: SizeConfig.defaultSize! * 30,
                height: SizeConfig.defaultSize! * 6,
                color: Consts.kPrimaryColor,
                onTap: () {
                  BlocProvider.of<ForgetPasswordBloc>(context).add(
                    VerifyCodeEvent(
                      code: code1 + code2 + code3 + code4 + code5 + code6,
                    ),
                  );
                  print(
                      'Code in Body: ${code1 + code2 + code3 + code4 + code5 + code6}');
                }),
          ],
        ),
      ),
    );
  }
}
