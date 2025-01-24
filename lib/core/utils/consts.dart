import 'dart:ui';

import 'package:easy_rest/features/splach_feature/data/models/onbourding_item_model.dart';

abstract class Consts {
  static const Color kPrimaryColor = Color(0xffFF7622);
  static List<OnbourdingItemModel> kOnBourdingItems = [
    OnbourdingItemModel(
        image: 'assets/images/Screenshot 2024-10-23 125641.png',
        title: 'All your favorites',
        subtitle:
            'Get all your loved foods in one once place, you just place the orer we do the rest'),
    OnbourdingItemModel(
        image: 'assets/images/onbourd2.png',
        title: 'All your favorites',
        subtitle:
            'Get all your loved foods in one once place,you just place the orer we do the rest'),
    OnbourdingItemModel(
      image: 'assets/images/onbourd3.png',
      title: 'Order from choosen chef',
      subtitle:
          'Get all your loved foods in one once place,you just place the orer we do the rest',
    ),
    OnbourdingItemModel(
      image: 'assets/images/onbourd4.png',
      title: 'Free delivery offers',
      subtitle:
          'Get all your loved foods in one once place,you just place the orer we do the rest',
    ),
  ];
}
