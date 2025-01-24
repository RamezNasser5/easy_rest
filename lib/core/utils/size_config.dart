import 'package:flutter/material.dart';

class SizeConfig {
  static double? width;
  static double? height;
  static double? defaultSize;
  static Orientation? orienation;

  void init(context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    orienation = MediaQuery.of(context).orientation;

    defaultSize =
        orienation == Orientation.landscape ? height! * 0.024 : width! * 0.024;
  }
}
