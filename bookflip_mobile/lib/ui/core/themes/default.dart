import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDesign {
  static const double spacingExtraSmall = 4.0;
  static const double spacingSmall = 8.0; // The double value used below
  static const double spacingDefault = 16.0;
  static const double spacingLarge = 24.0;
  static const LinearGradient bgGradient = LinearGradient(
    // Define the start and end points for a vertical or diagonal gradient
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    // Use modern, vibrant colors
    colors: [
      // A vibrant orange
      Color(0xFFfca212),
      // A warm reddish-pink for a modern blend
      Color.fromARGB(255, 255, 148, 90),
    ],
  );
  static const double radiusSmall = 8.0;
  static const double radiusDefault = 12.0;
  static const double radiusLarge = 16.0;

  static const EdgeInsets paddingAllDefault = EdgeInsets.all(spacingDefault);
  static const EdgeInsets paddingHorizontalSmall = EdgeInsets.symmetric(
    horizontal: spacingSmall,
  );
  static const EdgeInsets paddingVerticalLarge = EdgeInsets.symmetric(
    vertical: spacingLarge,
  );
  static Color textColor = Color(0xFFfca212).computeLuminance() > 0.5
      ? Colors.black
      : Colors.white;
  static final ThemeData appTheme = ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.amber.shade300, // Deep Purple
      brightness: Brightness.light,
      primary: Colors.amber.shade400,
      secondary: Colors.yellow,
    ),

    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        fontSize: 96.0,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.poppins(
        fontSize: 22.0,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.poppins(fontSize: 16.0),
      displaySmall: GoogleFonts.poppins(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.1,
        foreground: Paint()
          ..shader = const LinearGradient(
            colors: [
              Color(0xFF0A2647), // navy
              Color(0xFF1A0038), // deep purple
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(Rect.fromLTWH(0, 0, 250, 70)),
        shadows: [
          Shadow(color: Colors.white24, blurRadius: 12, offset: Offset(0, 2)),
        ],
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.black87,
    ),

    inputDecorationTheme: InputDecorationTheme(
      // FIX: Using the double value 'spacingSmall' which EdgeInsets.all expects
      contentPadding: EdgeInsets.all(AppDesign.spacingSmall),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDesign.radiusSmall),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        // Using WidgetStateProperty
        backgroundColor: WidgetStateProperty.all<Color>(Colors.amberAccent),
        overlayColor: WidgetStateProperty.all<Color>(Colors.yellow),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.black87),
        elevation: WidgetStateProperty.all(10),
        // Correctly setting shape using RoundedRectangleBorder
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    ),
  );
}
