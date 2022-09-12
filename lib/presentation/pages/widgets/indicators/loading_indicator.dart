import 'package:flutter/material.dart';
import 'package:flutter_auth/style/colors.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) => const Center(
        child: CircularProgressIndicator(color: AppStandardColors.amber),
      );
}
