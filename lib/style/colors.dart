import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorBase {}

abstract class AppColorBase {
  late Color bgColor;
  late Color white;
  late Color black;
  late Color amber;
  late Color yellow;
  late Color red;
}

class AppStandardColors {
  static const bgColor = Color(0xff0F3460);
  static const white = Color(0xffffffff);
  static const black = Color(0xff000000);
  static const amber = Color(0xFFFFC107);
  static const yellow = Color(0xFFFFEB3B);
  static const red = Color(0xFFFF0000);
}
