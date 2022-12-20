import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/utils/theme/widget_themes/eleveated_button_theme.dart';
import 'package:flutter_authentication/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:flutter_authentication/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:flutter_authentication/src/utils/theme/widget_themes/text_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {
  TAppTheme._(); // making the constructor private

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TEleveatedButtonTheme.lightEleveatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TEleveatedButtonTheme.darkEleveatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}


/*
const MaterialColor(0xFFFFE200, <int, Color>{
          50: Color(0x1AFFE200),
          100: Color(0x33FFE200),
          200: Color(0x4DFFE200),
          300: Color(0x66FFE200),
          400: Color(0x80FFE200),
          500: Color(0xFFFFE200),
          600: Color(0x99FFE200),
          700: Color(0xB3FFE200),
          800: Color(0xCCFFE200),
          900: Color(0xE6FFE200),
        })
*/