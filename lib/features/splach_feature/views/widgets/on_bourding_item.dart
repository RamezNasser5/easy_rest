import 'package:easy_rest/features/splach_feature/data/models/onbourding_item_model.dart';
import 'package:flutter/material.dart';

class OnBourdingItem extends StatelessWidget {
  const OnBourdingItem({
    super.key,
    required this.onbourdingItemModel,
  });

  final OnbourdingItemModel onbourdingItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 3),
        Image.asset(
          onbourdingItemModel.image,
        ),
        Spacer(flex: 3),
        Text(
          onbourdingItemModel.title,
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
            fontWeight: FontWeight.w800,
          ),
        ),
        Spacer(flex: 1),
        Text(
          onbourdingItemModel.subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'assets/fonts/Sen-VariableFont_wght.ttf',
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(flex: 3),
      ],
    );
  }
}
