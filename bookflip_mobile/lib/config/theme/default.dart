import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcnui;

class AppDesign {
  // ... (Your existing static variables are fine)

  // 1. Get the base Geist typography to copy from
  static final shadcnui.Typography _defaultGeist = shadcnui.Typography.geist();

  // 2. Define the base Poppins style
  static final TextStyle _poppinsStyle = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  // 3. Define the Mono style (Fira Mono)
  static final TextStyle _firaMonoStyle = TextStyle(
    fontFamily: GoogleFonts.firaMono().fontFamily,
  );

  // 4. Create the custom shadcnui.Typography instance using the default constructor
  static final shadcnui.Typography _appTypography = shadcnui.Typography(
    
    // --- Font Family & Style ---
    sans: _poppinsStyle,
    mono: _firaMonoStyle,

    // --- Sizing Utilities (Must map ALL 14 sizes) ---
    xSmall: _defaultGeist.xSmall.copyWith(fontFamily: _poppinsStyle.fontFamily),
    small: _defaultGeist.small.copyWith(fontFamily: _poppinsStyle.fontFamily),
    base: _defaultGeist.base.copyWith(fontFamily: _poppinsStyle.fontFamily),
    large: _defaultGeist.large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    xLarge: _defaultGeist.xLarge.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x2Large: _defaultGeist.x2Large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x3Large: _defaultGeist.x3Large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x4Large: _defaultGeist.x4Large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x5Large: _defaultGeist.x5Large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x6Large: _defaultGeist.x6Large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x7Large: _defaultGeist.x7Large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x8Large: _defaultGeist.x8Large.copyWith(fontFamily: _poppinsStyle.fontFamily),
    x9Large: _defaultGeist.x9Large.copyWith(fontFamily: _poppinsStyle.fontFamily),

    // --- Weights (Must map ALL 10 weights) ---
    // If you skip these, the weight styles will use the default Geist font family
    thin: _defaultGeist.thin.copyWith(fontFamily: _poppinsStyle.fontFamily),
    light: _defaultGeist.light.copyWith(fontFamily: _poppinsStyle.fontFamily),
    extraLight: _defaultGeist.extraLight.copyWith(fontFamily: _poppinsStyle.fontFamily),
    normal: _defaultGeist.normal.copyWith(fontFamily: _poppinsStyle.fontFamily),
    medium: _defaultGeist.medium.copyWith(fontFamily: _poppinsStyle.fontFamily),
    semiBold: _defaultGeist.semiBold.copyWith(fontFamily: _poppinsStyle.fontFamily),
    bold: _defaultGeist.bold.copyWith(fontFamily: _poppinsStyle.fontFamily),
    extraBold: _defaultGeist.extraBold.copyWith(fontFamily: _poppinsStyle.fontFamily),
    black: _defaultGeist.black.copyWith(fontFamily: _poppinsStyle.fontFamily),
    italic: _defaultGeist.italic.copyWith(fontFamily: _poppinsStyle.fontFamily),

    // --- Semantic Roles (Must map ALL 10 roles) ---
    h1: _defaultGeist.h1.copyWith(fontFamily: _poppinsStyle.fontFamily),
    h2: _defaultGeist.h2.copyWith(fontFamily: _poppinsStyle.fontFamily),
    h3: _defaultGeist.h3.copyWith(fontFamily: _poppinsStyle.fontFamily),
    h4: _defaultGeist.h4.copyWith(fontFamily: _poppinsStyle.fontFamily),
    p: _defaultGeist.p.copyWith(fontFamily: _poppinsStyle.fontFamily),
    blockQuote: _defaultGeist.blockQuote.copyWith(fontFamily: _poppinsStyle.fontFamily),
    inlineCode: _defaultGeist.inlineCode.copyWith(fontFamily: _firaMonoStyle.fontFamily), // Use the mono font here
    lead: _defaultGeist.lead.copyWith(fontFamily: _poppinsStyle.fontFamily),
    textLarge: _defaultGeist.textLarge.copyWith(fontFamily: _poppinsStyle.fontFamily),
    textSmall: _defaultGeist.textSmall.copyWith(fontFamily: _poppinsStyle.fontFamily),
    textMuted: _defaultGeist.textMuted.copyWith(fontFamily: _poppinsStyle.fontFamily),
  );

  static final shadcnui.ThemeData appTheme = shadcnui.ThemeData(
    colorScheme: shadcnui.ColorSchemes.lightDefaultColor,
    radius: 0.5,
    typography: _appTypography, 

  );
}