import 'package:flutter/material.dart';
import 'package:test_validation/theme/colors.dart';
import 'package:test_validation/theme/sizes.dart';

ThemeData appTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.inputBorderRadius),
      borderSide: const BorderSide(
        color: AppColors.blue,
        width: Sizes.inputBorderWidth,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.inputBorderRadius),
      borderSide: const BorderSide(
        color: AppColors.grey,
        width: Sizes.inputBorderWidth,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.inputBorderRadius),
      borderSide: const BorderSide(
        color: AppColors.red,
        width: Sizes.inputBorderWidth,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(Sizes.inputBorderRadius),
      borderSide: const BorderSide(
        color: AppColors.red,
        width: Sizes.inputBorderWidth,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all<Color>(AppColors.blue),
    ),
  ),
);
