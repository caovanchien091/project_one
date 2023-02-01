import 'package:flutter/material.dart';

class AppColorScheme {
  static ColorScheme get light => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF0060AC),
        onPrimary: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFD4E3FF),
        onPrimaryContainer: Color(0xFF001C39),
        secondary: Color(0xFF00658C),
        onSecondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFC5E7FF),
        onSecondaryContainer: Color(0xFF001E2D),
        tertiary: Color(0xFF1D5FA6),
        onTertiary: Color(0xFFFFFFFF),
        tertiaryContainer: Color(0xFFD4E3FF),
        onTertiaryContainer: Color(0xFF001C3A),
        error: Color(0xFFBA1A1A),
        errorContainer: Color(0xFFFFDAD6),
        onError: Color(0xFFFFFFFF),
        onErrorContainer: Color(0xFF410002),
        background: Color(0xFFFDFCFF),
        onBackground: Color(0xFF1A1C1E),
        surface: Color(0xFFFDFCFF),
        onSurface: Color(0xFF1A1C1E),
        surfaceVariant: Color(0xFFDFE2EB),
        onSurfaceVariant: Color(0xFF43474E),
        outline: Color(0xFF73777F),
        onInverseSurface: Color(0xFFF1F0F4),
        inverseSurface: Color(0xFF2F3033),
        inversePrimary: Color(0xFFA4C9FF),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFF0060AC),
        //outlineVariant: Color(0xFFC3C6CF),
        //scrim: Color(0xFF000000),
      );

  static ColorScheme get dark => const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFA4C9FF),
        onPrimary: Color(0xFF00315D),
        primaryContainer: Color(0xFF004883),
        onPrimaryContainer: Color(0xFFD4E3FF),
        secondary: Color(0xFF7FD0FF),
        onSecondary: Color(0xFF00344A),
        secondaryContainer: Color(0xFF004C6A),
        onSecondaryContainer: Color(0xFFC5E7FF),
        tertiary: Color(0xFFA5C8FF),
        onTertiary: Color(0xFF00315E),
        tertiaryContainer: Color(0xFF004785),
        onTertiaryContainer: Color(0xFFD4E3FF),
        error: Color(0xFFFFB4AB),
        errorContainer: Color(0xFF93000A),
        onError: Color(0xFF690005),
        onErrorContainer: Color(0xFFFFDAD6),
        background: Color(0xFF1A1C1E),
        onBackground: Color(0xFFE3E2E6),
        surface: Color(0xFF1A1C1E),
        onSurface: Color(0xFFE3E2E6),
        surfaceVariant: Color(0xFF43474E),
        onSurfaceVariant: Color(0xFFC3C6CF),
        outline: Color(0xFF8D9199),
        onInverseSurface: Color(0xFF1A1C1E),
        inverseSurface: Color(0xFFE3E2E6),
        inversePrimary: Color(0xFF0060AC),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFFA4C9FF),
        //outlineVariant: Color(0xFF43474E),
        //scrim: Color(0xFF000000),
      );
}
