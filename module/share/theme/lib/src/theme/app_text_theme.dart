import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class CustomTextTheme extends TextTheme {
  @override
  TextStyle? get displayLarge => super.displayLarge?.copyWith(
        fontSize: AppTextSize.displayLarge,
      );

  @override
  TextStyle? get displayMedium => super.displayMedium?.copyWith(
        fontSize: AppTextSize.displayMedium,
      );

  @override
  TextStyle? get displaySmall => super.displaySmall?.copyWith(
        fontSize: AppTextSize.displaySmall,
      );

  @override
  TextStyle? get headlineLarge => super.headlineLarge?.copyWith(
        fontSize: AppTextSize.headlineLarge,
      );

  @override
  TextStyle? get headlineMedium => super.headlineMedium?.copyWith(
        fontSize: AppTextSize.headlineMedium,
      );

  @override
  TextStyle? get headlineSmall => super.headlineSmall?.copyWith(
        fontSize: AppTextSize.headlineSmall,
      );

  @override
  TextStyle? get titleLarge => super.titleLarge?.copyWith(
        fontSize: AppTextSize.titleLarge,
      );

  @override
  TextStyle? get titleMedium => super.titleMedium?.copyWith(
        fontSize: AppTextSize.titleMedium,
      );

  @override
  TextStyle? get titleSmall => super.titleSmall?.copyWith(
        fontSize: AppTextSize.titleSmall,
      );

  @override
  TextStyle? get bodyLarge => super.bodyLarge?.copyWith(
        fontSize: AppTextSize.bodyLarge,
      );

  @override
  TextStyle? get bodyMedium => super.bodyMedium?.copyWith(
        fontSize: AppTextSize.bodyMedium,
      );

  @override
  TextStyle? get bodySmall => super.bodySmall?.copyWith(
        fontSize: AppTextSize.bodySmall,
      );

  @override
  TextStyle? get labelLarge => super.labelLarge?.copyWith(
        fontSize: AppTextSize.labelLarge,
      );

  @override
  TextStyle? get labelMedium => super.labelMedium?.copyWith(
        fontSize: AppTextSize.labelMedium,
      );

  @override
  TextStyle? get labelSmall => super.labelSmall?.copyWith(
        fontSize: AppTextSize.labelSmall,
      );
}
