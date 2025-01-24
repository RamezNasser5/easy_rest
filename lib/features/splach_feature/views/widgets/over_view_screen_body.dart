import 'package:easy_rest/core/routing/app_routing.dart';
import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/core/widgets/custom_button.dart';
import 'package:easy_rest/features/splach_feature/views/widgets/custom_dots_indicator.dart';
import 'package:easy_rest/features/splach_feature/views/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OverViewScreenBody extends StatefulWidget {
  const OverViewScreenBody({super.key});

  @override
  State<OverViewScreenBody> createState() => _OverViewScreenBodyState();
}

class _OverViewScreenBodyState extends State<OverViewScreenBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomPageView(
            pageController: pageController!,
          ),
          CustomDotsIndicator(
            dotsCount:
                pageController!.hasClients ? pageController!.page!.toInt() : 0,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize! * 4,
            ),
            child: CustomButton(
              text: 'next',
              width: SizeConfig.defaultSize! * 30,
              height: SizeConfig.defaultSize! * 6,
              color: Consts.kPrimaryColor,
              onTap: () {
                pageController!.page!.toInt() == 3
                    ? GoRouter.of(context).go(AppRouting.kSignInRout)
                    : pageController!.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.elasticOut,
                      );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize! * 2,
            ),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).go(AppRouting.kSignInRout);
              },
              child: Text('Skip'),
            ),
          ),
        ],
      ),
    );
  }
}
