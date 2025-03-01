import 'package:easy_rest/features/auth_feature/ui/widgets/verify_code_screen_body.dart';
import 'package:flutter/material.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121223),
      body: VerifyCodeScreenBody(),
    );
  }
}
