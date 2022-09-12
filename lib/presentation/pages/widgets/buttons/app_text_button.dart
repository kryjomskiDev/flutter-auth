import 'package:flutter/material.dart';
import 'package:flutter_auth/style/app_typography.dart';
import 'package:flutter_auth/style/colors.dart';

class AppTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const AppTextButton({
    required this.onTap,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: onTap,
          child: Text(
            title,
            style: AppTypography.subTitle.copyWith(color: AppStandardColors.white),
          ),
        ),
      );
}
