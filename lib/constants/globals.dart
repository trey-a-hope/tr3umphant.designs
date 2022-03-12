import 'package:flutter/material.dart';

class Globals {
  Globals._();

  /// Routes
  static const String routesContact = '/contact';
  static const String routesHome = '/home';
  static const String routesAbout = '/about';
  static const String routesPortfolio = '/portfolio';

  /// Colors
  static const Color kPrimaryColor = Color(0xFFFF3B1D);
  static const Color kDarkBlackColor = Color(0xFF191919);
  static const Color kBgColor = Color(0xFFE7E7E7);
  static const Color kBodyTextColor = Color(0xFF666666);

  /// Dimensions
  static const double kDefaultPadding = 20.0;
  static const double kMaxWidth = 1232.0;

  /// Times
  static const Duration kDefaultDuration = Duration(milliseconds: 250);

  /// Memory
  static const String menuIndex = 'MENU_INDEX';
}
