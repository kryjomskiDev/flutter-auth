import 'package:flutter/material.dart';
import 'package:flutter_auth/style/colors.dart';

class ThemeModel with ChangeNotifier {
  AppTheme _currentTheme = StandardTheme();

  AppTheme get theme => _currentTheme;

  void setTheme(theme) {
    _currentTheme = theme;
    notifyListeners();
  }
}

abstract class AppTheme implements AppColorBase {}

class StandardTheme extends AppTheme {
  @override
  Color bgColor = AppStandardColors.bgColor;

  @override
  Color black = AppStandardColors.black;

  @override
  Color white = AppStandardColors.white;

  @override
  Color amber = AppStandardColors.amber;

  @override
  Color yellow = AppStandardColors.yellow;

  @override
  Color red = AppStandardColors.red;
}
