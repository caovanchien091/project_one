import 'dart:ui';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppTextTheme extends TextTheme {
  final Color textColor;

  const AppTextTheme({
    required this.textColor,
  });

  TextStyle get defaultTextStyle => const TextStyle(
        package: 'theme',
        fontFamily: 'InterFont',
      );

  @override
  TextStyle? get displayLarge => defaultTextStyle.copyWith(
        fontSize: AppTextSize.displayLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get displayMedium => defaultTextStyle.copyWith(
        fontSize: AppTextSize.displayMedium,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get displaySmall => defaultTextStyle.copyWith(
        fontSize: AppTextSize.displaySmall,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get headlineLarge => defaultTextStyle.copyWith(
        fontSize: AppTextSize.headlineLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get headlineMedium => defaultTextStyle.copyWith(
        fontSize: AppTextSize.headlineMedium,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get headlineSmall => defaultTextStyle.copyWith(
        fontSize: AppTextSize.headlineSmall,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get titleLarge => defaultTextStyle.copyWith(
        fontSize: AppTextSize.titleLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get titleMedium => defaultTextStyle.copyWith(
        fontSize: AppTextSize.titleMedium,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get titleSmall => defaultTextStyle.copyWith(
        fontSize: AppTextSize.titleSmall,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get bodyLarge => defaultTextStyle.copyWith(
        fontSize: AppTextSize.bodyLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get bodyMedium => defaultTextStyle.copyWith(
        fontSize: AppTextSize.bodyMedium,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get bodySmall => defaultTextStyle.copyWith(
        fontSize: AppTextSize.bodySmall,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get labelLarge => defaultTextStyle.copyWith(
        fontSize: AppTextSize.labelLarge,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get labelMedium => defaultTextStyle.copyWith(
        fontSize: AppTextSize.labelMedium,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get labelSmall => defaultTextStyle.copyWith(
        fontSize: AppTextSize.labelSmall,
        fontWeight: FontWeight.w500,
        color: textColor,
      );
}
