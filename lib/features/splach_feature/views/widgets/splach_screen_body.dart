import 'package:easy_rest/core/utils/helper.dart';
import 'package:easy_rest/features/splach_feature/views/widgets/svg_assets.dart';
import 'package:flutter/material.dart';

class SplachScreenBody extends StatefulWidget {
  const SplachScreenBody({super.key});

  @override
  State<SplachScreenBody> createState() => _SplachScreenBodyState();
}

class _SplachScreenBodyState extends State<SplachScreenBody> {
  @override
  void initState() {
    Helper.navigationToOverView(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.4,
            ),
            child: SVGAssets(
              svgPath: 'assets/images/Ellipse 1005.svg',
              width: 0.5,
              height: 0.2,
            ),
          ),
          Spacer(),
          SVGAssets(
            svgPath: 'assets/images/Logo.svg',
            width: 0.2,
            height: 0.07,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.4,
            ),
            child: SVGAssets(
              svgPath: 'assets/images/Ellipse 1006.svg',
              width: 0.75,
              height: 0.32,
            ),
          ),
        ],
      ),
    );
  }
}
