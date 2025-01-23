import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SVGAssets extends StatelessWidget {
  const SVGAssets({
    super.key,
    required this.svgPath,
    required this.width,
    required this.height,
  });

  final String svgPath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
    );
  }
}
