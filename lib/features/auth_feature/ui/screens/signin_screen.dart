import 'package:easy_rest/features/auth_feature/ui/widgets/signin_screen_body.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121223),
      body: const SigninScreenBody(),
    );
  }
}
