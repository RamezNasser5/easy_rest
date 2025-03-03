import 'package:easy_rest/features/auth_feature/ui/widgets/forget_password_widgets/forgot_password_screen_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121223),
      body: const ForgotPasswordScreenBody(),
    );
  }
}
