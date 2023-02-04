import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppTheme {
  static ThemeData get dark => _buildTheme(true);

  static ThemeData get light => _buildTheme(false);

  static ThemeData _buildTheme(bool isDark) {
    ThemeData data;

    if (isDark) {
      data = ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: AppColorScheme.dark,
      );
    } else {
      data = ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: AppColorScheme.light,
      );
    }

    return data.copyWith(
      inputDecorationTheme: AppDecorationTheme(),
      textTheme: AppTextTheme(
        textColor: data.colorScheme.onSurface,
      ),
    );
  }
}
