import 'package:easy_rest/features/auth_feature/ui/widgets/auth_widgets/signup_screen_body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121223),
      body: SignupScreenBody(),
    );
  }
}
