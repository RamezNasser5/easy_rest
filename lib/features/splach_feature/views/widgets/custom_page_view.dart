import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/features/splach_feature/views/widgets/on_bourding_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * 60,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        controller: pageController,
        itemCount: 4,
        itemBuilder: (context, index) => OnBourdingItem(
          onbourdingItemModel: Consts.kOnBourdingItems[index],
        ),
      ),
    );
  }
}
