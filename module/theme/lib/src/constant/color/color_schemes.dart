import 'package:flutter/material.dart';

class ColorSchemes {
  static ColorScheme get light => const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFF365CA8),
        onPrimary: Color(0xFFFFFFFF),
        primaryContainer: Color(0xFFD9E2FF),
        onPrimaryContainer: Color(0xFF001944),
        secondary: Color(0xFF0461A3),
        onSecondary: Color(0xFFFFFFFF),
        secondaryContainer: Color(0xFFD1E4FF),
        onSecondaryContainer: Color(0xFF001D36),
        tertiary: Color(0xFF006973),
        onTertiary: Color(0xFFFFFFFF),
        tertiaryContainer: Color(0xFF93F1FF),
        onTertiaryContainer: Color(0xFF001F23),
        error: Color(0xFFBA1A1A),
        errorContainer: Color(0xFFFFDAD6),
        onError: Color(0xFFFFFFFF),
        onErrorContainer: Color(0xFF410002),
        background: Color(0xFFFAFCFF),
        onBackground: Color(0xFF001F2A),
        surface: Color(0xFFFAFCFF),
        onSurface: Color(0xFF001F2A),
        surfaceVariant: Color(0xFFE1E2EC),
        onSurfaceVariant: Color(0xFF44464F),
        outline: Color(0xFF757780),
        onInverseSurface: Color(0xFFE1F4FF),
        inverseSurface: Color(0xFF003547),
        inversePrimary: Color(0xFFB0C6FF),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFF365CA8),
        //outlineVariant: Color(0xFFC5C6D0),
        //scrim: Color(0xFF000000),
      );

  static ColorScheme get dark => const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xFFB0C6FF),
        onPrimary: Color(0xFF002D6E),
        primaryContainer: Color(0xFF18438F),
        onPrimaryContainer: Color(0xFFD9E2FF),
        secondary: Color(0xFF9FCAFF),
        onSecondary: Color(0xFF003259),
        secondaryContainer: Color(0xFF00497D),
        onSecondaryContainer: Color(0xFFD1E4FF),
        tertiary: Color(0xFF4ED8EA),
        onTertiary: Color(0xFF00363C),
        tertiaryContainer: Color(0xFF004F57),
        onTertiaryContainer: Color(0xFF93F1FF),
        error: Color(0xFFFFB4AB),
        errorContainer: Color(0xFF93000A),
        onError: Color(0xFF690005),
        onErrorContainer: Color(0xFFFFDAD6),
        background: Color(0xFF001F2A),
        onBackground: Color(0xFFBFE9FF),
        surface: Color(0xFF001F2A),
        onSurface: Color(0xFFBFE9FF),
        surfaceVariant: Color(0xFF44464F),
        onSurfaceVariant: Color(0xFFC5C6D0),
        outline: Color(0xFF8F9099),
        onInverseSurface: Color(0xFF001F2A),
        inverseSurface: Color(0xFFBFE9FF),
        inversePrimary: Color(0xFF365CA8),
        shadow: Color(0xFF000000),
        surfaceTint: Color(0xFFB0C6FF),
        //outlineVariant: Color(0xFF44464F),
        //scrim: Color(0xFF000000),
      );
}
