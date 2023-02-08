import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

extension SizeContextExtension on BuildContext {
  double get spacingSizeXXS => AppSpaceSize.spacingXXS;

  double get spacingSizeXS => AppSpaceSize.spacingXS;

  double get spacingSizeS => AppSpaceSize.spacingS;

  double get spacingSize => AppSpaceSize.spacing;

  double get spacingSizeL => AppSpaceSize.spacingL;

  double get spacingSizeXL => AppSpaceSize.spacingXL;

  double get spacingSizeXXL => AppSpaceSize.spacingXXL;

  double get displayLargeSize => AppTextSize.displayLarge;

  double get displayMediumSize => AppTextSize.displayMedium;

  double get displaySmallSize => AppTextSize.displaySmall;

  double get headlineLargeSize => AppTextSize.headlineLarge;

  double get headlineMediumSize => AppTextSize.headlineMedium;

  double get headlineSmallSize => AppTextSize.headlineSmall;

  double get titleLargeSize => AppTextSize.titleLarge;

  double get titleMediumSize => AppTextSize.titleMedium;

  double get titleSmallSize => AppTextSize.titleSmall;

  double get labelLargeSize => AppTextSize.labelLarge;

  double get labelMediumSize => AppTextSize.labelMedium;

  double get labelSmallSize => AppTextSize.labelSmall;

  double get bodyLargeSize => AppTextSize.bodyLarge;

  double get bodyMediumSize => AppTextSize.bodyMedium;

  double get bodySmallSize => AppTextSize.bodySmall;
}
