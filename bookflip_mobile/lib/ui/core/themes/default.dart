import 'package:flutter/material.dart';

class AppDesign {
  static const double spacingExtraSmall = 4.0;
  static const double spacingSmall = 8.0; // The double value used below
  static const double spacingDefault = 16.0;
  static const double spacingLarge = 24.0;

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

  static  final ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.amber.shade300, // Deep Purple
      brightness: Brightness.light,
      primary: Colors.amber.shade400,
      secondary: Colors.amber.shade300,
    ),  

    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(fontSize: 16.0),
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
  );
}