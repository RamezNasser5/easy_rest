import 'package:easy_rest/features/auth_feature/ui/widgets/forget_password_widgets/reset_password_screen_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121223),
      body: ResetPasswordScreenBody(),
    );
  }
}
