import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

extension ColorContextExtension on BuildContext {
  Color get primaryColor => colorScheme.primary;

  Color get onPrimaryColor => colorScheme.onPrimary;

  Color get primaryContainerColor => colorScheme.primaryContainer;

  Color get onPrimaryContainerColor => colorScheme.onPrimaryContainer;

  Color get secondaryColor => colorScheme.secondary;

  Color get onSecondaryColor => colorScheme.onSecondary;

  Color get secondaryContainerColor => colorScheme.secondaryContainer;

  Color get onSecondaryContainerColor => colorScheme.onSecondaryContainer;

  Color get tertiaryColor => colorScheme.tertiary;

  Color get onTertiaryColor => colorScheme.onTertiary;

  Color get tertiaryContainerColor => colorScheme.tertiaryContainer;

  Color get onTertiaryContainerColor => colorScheme.onTertiaryContainer;

  Color get errorColor => colorScheme.error;

  Color get errorContainerColor => colorScheme.errorContainer;

  Color get onErrorColor => colorScheme.onError;

  Color get onErrorContainerColor => colorScheme.onErrorContainer;

  Color get backgroundColor => colorScheme.background;

  Color get onBackgroundColor => colorScheme.onBackground;

  Color get surfaceColor => colorScheme.surface;

  Color get onSurfaceColor => colorScheme.onSurface;

  Color get surfaceVariantColor => colorScheme.surfaceVariant;

  Color get onSurfaceVariantColor => colorScheme.onSurfaceVariant;

  Color get outlineColor => colorScheme.outline;

  Color get onInverseSurfaceColor => colorScheme.onInverseSurface;

  Color get inverseSurfaceColor => colorScheme.inverseSurface;

  Color get inversePrimaryColor => colorScheme.inversePrimary;

  Color get shadowColor => colorScheme.shadow;

  Color get surfaceTintColor => colorScheme.surfaceTint;
}
