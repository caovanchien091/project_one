import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppSpacer extends StatelessWidget {
  final double size;

  const AppSpacer({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
    );
  }

  // Default Spacer
  // ===========================================================================

  static AppSpacer get spacingXXS => AppSpacer(
        size: AppSpaceSize.spacingXXS,
      );

  static AppSpacer get spacingXS => AppSpacer(
        size: AppSpaceSize.spacingXS,
      );

  static AppSpacer get spacingS => AppSpacer(
        size: AppSpaceSize.spacingS,
      );

  static AppSpacer get spacing => AppSpacer(
        size: AppSpaceSize.spacing,
      );

  static AppSpacer get spacingL => AppSpacer(
        size: AppSpaceSize.spacingL,
      );

  static AppSpacer get spacingXL => AppSpacer(
        size: AppSpaceSize.spacingXL,
      );

  static AppSpacer get spacingXXL => AppSpacer(
        size: AppSpaceSize.spacingXXL,
      );
}
