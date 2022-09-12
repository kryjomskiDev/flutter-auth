import 'package:flutter/material.dart';
import 'package:flutter_auth/style/app_typography.dart';

const Duration _duration = Duration(seconds: 4);

class AppSnackBar extends SnackBar {
  AppSnackBar({
    Key? key,
    required String title,
    Color? textColor,
    Color? backgroundColor,
  }) : super(
          key: key,
          content: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTypography.subTitle.copyWith(color: textColor),
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
          behavior: SnackBarBehavior.floating,
          duration: _duration,
        );
}
