import 'package:flutter/material.dart';
import 'package:flutter_auth/presentation/pages/widgets/indicators/loading_indicator.dart';
import 'package:flutter_auth/style/app_typography.dart';
import 'package:flutter_auth/style/colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool? isLoading;
  final bool? canProceed;

  const AppButton({
    required this.onPressed,
    required this.title,
    this.canProceed,
    this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) => indicateIsLoading
      ? const AppLoadingIndicator()
      : SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: indicateCanProceed ? onPressed : null,
            style: ElevatedButton.styleFrom(
              primary: AppStandardColors.amber,
            ),
            child: Text(
              title,
              style: AppTypography.title.copyWith(color: AppStandardColors.white),
            ),
          ),
        );

  bool get indicateIsLoading => isLoading != null ? isLoading! : false;

  bool get indicateCanProceed => canProceed != null ? canProceed! : true;
}
