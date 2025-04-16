import 'package:flutter/material.dart';
import 'package:shopping_app/config/theme/colors.dart';
import 'package:shopping_app/config/theme/dimens.dart';

sealed class AppTextStyles {
  static const headlineLarge = TextStyle(
    fontSize: AppDimens.d64,
    color: AppColors.textColorLight,
    fontWeight: FontWeight.bold,
    letterSpacing: AppDimens.d8,
  );

  static const headlineMedium = TextStyle(
    fontSize: AppDimens.d36,
    color: AppColors.textColorLight,
    fontWeight: FontWeight.w600,
  );

  static const headlineSmall = TextStyle(
    fontSize: AppDimens.d20,
    color: AppColors.textColorLight,
  );

  static const button = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: AppDimens.d16,
  );
}
