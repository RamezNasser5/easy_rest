import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/features/splach_feature/views/widgets/svg_assets.dart';
import 'package:flutter/material.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        SizeConfig.defaultSize! * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SVGAssets(
            svgPath: 'assets/images/facebook.svg',
            width: 0.07,
            height: 0.07,
          ),
          const SVGAssets(
            svgPath: 'assets/images/tweeter.svg',
            width: 0.07,
            height: 0.07,
          ),
          const SVGAssets(
            svgPath: 'assets/images/apple.svg',
            width: 0.07,
            height: 0.07,
          ),
        ],
      ),
    );
  }
}
