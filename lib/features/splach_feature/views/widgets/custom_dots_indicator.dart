import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_rest/core/utils/consts.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.dotsCount,
  });

  final int dotsCount;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 4,
      position: dotsCount,
      decorator: DotsDecorator(
        activeColor: Consts.kPrimaryColor,
        color: Color(0xffFFE1CE),
      ),
    );
  }
}
