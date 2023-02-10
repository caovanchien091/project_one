import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class AppTheme {
  static ThemeData get dark => _buildTheme(true);

  static ThemeData get light => _buildTheme(false);

  static ThemeData _buildTheme(bool isDark) {
    ThemeData data;

    if (isDark) {
      data = ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorSchemes.dark,
      );
    } else {
      data = ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorSchemes.light,
      );
    }

    return data.copyWith(
      inputDecorationTheme: TextDecorationTheme(),
      textTheme: AppTextTheme(
        textColor: data.colorScheme.onSurface,
      ),
    );
  }
}
