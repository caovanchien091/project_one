import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

extension ColorContext on BuildContext {
  Color get primary => colorScheme.primary;

  Color get onPrimary => colorScheme.onPrimary;

  Color get primaryContainer => colorScheme.primaryContainer;

  Color get onPrimaryContainer => colorScheme.onPrimaryContainer;

  Color get secondary => colorScheme.secondary;

  Color get onSecondary => colorScheme.onSecondary;

  Color get secondaryContainer => colorScheme.secondaryContainer;

  Color get onSecondaryContainer => colorScheme.onSecondaryContainer;

  Color get tertiary => colorScheme.tertiary;

  Color get onTertiary => colorScheme.onTertiary;

  Color get tertiaryContainer => colorScheme.tertiaryContainer;

  Color get onTertiaryContainer => colorScheme.onTertiaryContainer;

  Color get error => colorScheme.error;

  Color get errorContainer => colorScheme.errorContainer;

  Color get onError => colorScheme.onError;

  Color get onErrorContainer => colorScheme.onErrorContainer;

  Color get background => colorScheme.background;

  Color get onBackground => colorScheme.onBackground;

  Color get surface => colorScheme.surface;

  Color get onSurface => colorScheme.onSurface;

  Color get surfaceVariant => colorScheme.surfaceVariant;

  Color get onSurfaceVariant => colorScheme.onSurfaceVariant;

  Color get outline => colorScheme.outline;

  Color get onInverseSurface => colorScheme.onInverseSurface;

  Color get inverseSurface => colorScheme.inverseSurface;

  Color get inversePrimary => colorScheme.inversePrimary;

  Color get shadow => colorScheme.shadow;

  Color get surfaceTint => colorScheme.surfaceTint;
}
