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

  /// Social
  static const String instagramUrl =
      'https://www.instagram.com/tr3umphant.designs/?hl=en';

  /// Images
  static const String businessLogo = 'assets/images/business_logo.png';

  /// About
  static const String ourWhy =
      'We solve everyday problems of small businesses and individuals via custom solutions that is cost friendly. We believe it can be very difficult for such business to get started without the right solutions, so we want to focus on the pains of every business and determine how to fix this.';
  static const String ourHow =
      'The way we do this is by focusing on affordability, convenience, and user friendly services. Reaching out to the “average Joe” consumer only, we can target the less heard and funded to ensure they’re able to take advantage of these custom solutions.';
  static const String ourWhat =
      'We create mobile and web applications in the form of MVPs, (minimal viable products) for small businesses and individuals. Without heavy focus on the UI, we can focus more on the actual functionality and how the solution to their problem can be delivered in order to see there business thrive.';
}
