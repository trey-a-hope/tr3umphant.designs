import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/models/portfolio_app.dart';

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

  /// Apps
  static List<PortfolioApp> apps = [
    PortfolioApp(
      title: 'Critic',
      description: 'Mobile app for leaving movie reviews.',
      imagePath:
          'https://is5-ssl.mzstatic.com/image/thumb/Purple116/v4/1b/7a/67/1b7a67d1-c6f3-6089-34cb-0474d9f49b4c/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1024x1024bb.png',
      iOSLink:
          'https://apps.apple.com/us/app/critic-movie-reviews/id1508043723',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.io.critic&hl=en_US&gl=US',
    )
  ];

  /// About
  static const String ourWhy =
      'To solve everyday problems of small businesses and individuals via custom solutions that is cost friendly. We believe it can be very difficult for such business to get started without the right solutions, so we want to focus on the pains of every business and determine how to fix this.';
  static const String ourHow =
      'The way we do this is by focusing on affordability, convenience, and user friendly services. Reaching out to the “average Joe” consumer only, we can target the less heard and funded to ensure they’re able to take advantage of these custom solutions.';
  static const String ourWhat =
      'We create mobile and web applications in the form of MVPs, (minimal viable products) for small businesses and individuals. Without heavy focus on the UI, we can focus more on the actual functionality and how the solution to their problem can be delivered in order to see there business thrive.';
}
