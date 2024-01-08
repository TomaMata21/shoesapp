import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const TextTheme textTheme = TextTheme(
    displayLarge: displayLarge,
    displayMedium: displayMedium,
    displaySmall: displaySmall,
    headlineLarge: headlineLarge,
    headlineMedium: headlineMedium,
    headlineSmall: headlineSmall,
    labelLarge: labelLarge,
    labelMedium: labelMedium,
    labelSmall: labelSmall,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    titleLarge: titleLarge,
    titleMedium: titleMedium,
    titleSmall: titleSmall,
  );

  static const TextStyle displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
    color: black,
  );

  static const TextStyle titleSmall = TextStyle(
    fontSize: 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
    color: black,
  );

  static const TextStyle labelLarge = TextStyle(
    fontSize: 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
    color: black,
  );

  static const TextStyle labelMedium = TextStyle(
    fontSize: 12,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
    color: black,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
    color: black,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
    color: black,
  );

  static const Color black = Color(0xFF212225);
  static const Color grey = Color(0xFFa4a5ab);
  static const Color cardGrey = Color(0xFFdadfe8);
  static const Color lightGrey = Color(0xFFececf4);
  static const Color white = Color(0xFFffffff);
  static const Color primary = Color(0xFFfa3c67);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFBD0041),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFD9DC),
      onPrimaryContainer: Color(0xFF400010),
      secondary: Color(0xFF006874),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF97F0FF),
      onSecondaryContainer: Color(0xFF001F24),
      tertiary: Color(0xFF325DA8),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFD8E2FF),
      onTertiaryContainer: Color(0xFF001A42),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF201A1A),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF201A1A),
      surfaceVariant: Color(0xFFF4DDDE),
      onSurfaceVariant: Color(0xFF524344),
      outline: Color(0xFF847374),
      onInverseSurface: Color(0xFFFBEEEE),
      inverseSurface: Color(0xFF362F2F),
      inversePrimary: Color(0xFFFFB2BA),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFBD0041),
      outlineVariant: Color(0xFFD7C1C2),
      scrim: Color(0xFF000000),
    ),
    textTheme: GoogleFonts.josefinSansTextTheme(textTheme),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.josefinSansTextTheme(textTheme),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFFB2BA),
      onPrimary: Color(0xFF67001F),
      primaryContainer: Color(0xFF910030),
      onPrimaryContainer: Color(0xFFFFD9DC),
      secondary: Color(0xFF4FD8EB),
      onSecondary: Color(0xFF00363D),
      secondaryContainer: Color(0xFF004F58),
      onSecondaryContainer: Color(0xFF97F0FF),
      tertiary: Color(0xFFAEC6FF),
      onTertiary: Color(0xFF002E6A),
      tertiaryContainer: Color(0xFF11448F),
      onTertiaryContainer: Color(0xFFD8E2FF),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      background: Color(0xFF201A1A),
      onBackground: Color(0xFFECE0E0),
      surface: Color(0xFF201A1A),
      onSurface: Color(0xFFECE0E0),
      surfaceVariant: Color(0xFF524344),
      onSurfaceVariant: Color(0xFFD7C1C2),
      outline: Color(0xFF9F8C8D),
      onInverseSurface: Color(0xFF201A1A),
      inverseSurface: Color(0xFFECE0E0),
      inversePrimary: Color(0xFFBD0041),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFFFFB2BA),
      outlineVariant: Color(0xFF524344),
      scrim: Color(0xFF000000),
    ),

  );


}
