import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppTextTheme extends TextTheme {
  final Color textColor;

  const AppTextTheme({
    required this.textColor,
  });

  @override
  TextStyle? get displayLarge => const TextStyle().copyWith(
        fontSize: AppTextSize.displayLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get displayMedium => const TextStyle().copyWith(
        fontSize: AppTextSize.displayMedium,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get displaySmall => const TextStyle().copyWith(
        fontSize: AppTextSize.displaySmall,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get headlineLarge => const TextStyle().copyWith(
        fontSize: AppTextSize.headlineLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get headlineMedium => const TextStyle().copyWith(
        fontSize: AppTextSize.headlineMedium,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get headlineSmall => const TextStyle().copyWith(
        fontSize: AppTextSize.headlineSmall,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get titleLarge => const TextStyle().copyWith(
        fontSize: AppTextSize.titleLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get titleMedium => const TextStyle().copyWith(
        fontSize: AppTextSize.titleMedium,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get titleSmall => const TextStyle().copyWith(
        fontSize: AppTextSize.titleSmall,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get bodyLarge => const TextStyle().copyWith(
        fontSize: AppTextSize.bodyLarge,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get bodyMedium => const TextStyle().copyWith(
        fontSize: AppTextSize.bodyMedium,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get bodySmall => const TextStyle().copyWith(
        fontSize: AppTextSize.bodySmall,
        fontWeight: FontWeight.w400,
        color: textColor,
      );

  @override
  TextStyle? get labelLarge => const TextStyle().copyWith(
        fontSize: AppTextSize.labelLarge,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get labelMedium => const TextStyle().copyWith(
        fontSize: AppTextSize.labelMedium,
        fontWeight: FontWeight.w500,
        color: textColor,
      );

  @override
  TextStyle? get labelSmall => const TextStyle().copyWith(
        fontSize: AppTextSize.labelSmall,
        fontWeight: FontWeight.w500,
        color: textColor,
      );
}
