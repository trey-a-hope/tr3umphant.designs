import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/constants/globals.dart';

class AppThemes {
  AppThemes._();
  static ThemeData lightTheme = ThemeData(
    primaryColor: Globals.kPrimaryColor,
    scaffoldBackgroundColor: Globals.kBgColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(backgroundColor: Globals.kPrimaryColor),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Globals.kBodyTextColor),
      bodyText2: TextStyle(color: Globals.kBodyTextColor),
      headline5: TextStyle(color: Globals.kDarkBlackColor),
    ),
  );
}
