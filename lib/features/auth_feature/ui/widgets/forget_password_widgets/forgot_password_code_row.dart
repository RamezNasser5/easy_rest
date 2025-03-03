import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/forget_password_widgets/custom_code_fields.dart';
import 'package:flutter/material.dart';

class ForgotPasswordCodeRow extends StatelessWidget {
  const ForgotPasswordCodeRow({
    super.key,
    required this.onChanged1,
    required this.onChanged2,
    required this.onChanged3,
    required this.onChanged4,
    required this.onChanged5,
    required this.onChanged6,
  });

  final void Function(String)? onChanged1;
  final void Function(String)? onChanged2;
  final void Function(String)? onChanged3;
  final void Function(String)? onChanged4;
  final void Function(String)? onChanged5;
  final void Function(String)? onChanged6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.defaultSize! * 2.5,
        vertical: SizeConfig.defaultSize! * 4,
      ),
      child: Row(
        children: [
          CustomCodeField(
            onChanged: onChanged1,
          ),
          CustomCodeField(
            onChanged: onChanged2,
          ),
          CustomCodeField(
            onChanged: onChanged3,
          ),
          CustomCodeField(
            onChanged: onChanged4,
          ),
          CustomCodeField(
            onChanged: onChanged5,
          ),
          CustomCodeField(
            onChanged: onChanged6,
          ),
        ],
      ),
    );
  }
}
