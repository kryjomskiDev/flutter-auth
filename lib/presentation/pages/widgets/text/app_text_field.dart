import 'package:flutter/material.dart';
import 'package:flutter_auth/style/app_typography.dart';
import 'package:flutter_auth/style/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool? isObsecure;
  final ValueChanged<String>? onChanged;
  final String error;

  const AppTextField({
    required this.title,
    required this.controller,
    this.onChanged,
    this.isObsecure,
    required this.error,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedCrossFade(
            firstChild: Text(
              title,
              style: AppTypography.subTitle.copyWith(color: AppStandardColors.white),
            ),
            secondChild: Text(
              error,
              style: AppTypography.subTitle.copyWith(color: AppStandardColors.yellow),
            ),
            crossFadeState: error.isNotEmpty ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 200),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: AppStandardColors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: TextFormField(
              controller: controller,
              onChanged: onChanged,
              obscureText: isObsecure ?? false,
              decoration: InputDecoration(
                hintText: title,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(10.w),
              ),
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
        ],
      );
}
