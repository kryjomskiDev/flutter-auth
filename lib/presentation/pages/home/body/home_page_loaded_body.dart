import 'package:flutter/material.dart';
import 'package:flutter_auth/generated/l10n.dart';
import 'package:flutter_auth/presentation/pages/home/cubit/home_cubit.dart';
import 'package:flutter_auth/presentation/pages/widgets/buttons/app_button.dart';
import 'package:flutter_auth/style/app_typography.dart';
import 'package:flutter_auth/style/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageLoadedBody extends StatelessWidget {
  const HomePageLoadedBody({super.key});

  static const inBetweenGap = 30.0;

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: 300.w,
          height: 400.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                Strings.of(context).home_page_signed_in,
                style: AppTypography.header.copyWith(
                  color: AppStandardColors.white,
                ),
              ),
              const Spacer(),
              Text(
                Strings.of(context).home_page_user_name(context.read<HomeCubit>().userData.name),
                style: contentStyle,
              ),
              const SizedBox(height: inBetweenGap),
              Text(
                Strings.of(context).home_page_user_email(context.read<HomeCubit>().userData.email),
                style: contentStyle,
              ),
              const SizedBox(height: inBetweenGap),
              const Spacer(),
              AppButton(
                onPressed: context.read<HomeCubit>().logout,
                title: Strings.of(context).logout,
              ),
            ],
          ),
        ),
      );

  TextStyle get contentStyle => AppTypography.title.copyWith(
        color: AppStandardColors.white,
      );
}
