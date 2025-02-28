import 'package:flutter/material.dart';

class WelcomeUserRow extends StatelessWidget {
  const WelcomeUserRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: const Row(
        children: [
          Text(
            'Hey Halal, ',
            style: TextStyle(
              fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff1E1D1D),
            ),
          ),
          Text(
            'Good Afternoon!',
            style: TextStyle(
              fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xff1E1D1D),
            ),
          ),
        ],
      ),
    );
  }
}
