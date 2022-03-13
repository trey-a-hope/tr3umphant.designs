import 'package:get/get.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/ui/about/about_view.dart';
import 'package:tr3umphant_designs/ui/contact/contact_view.dart';
import 'package:tr3umphant_designs/ui/home/home_view.dart';
import 'package:tr3umphant_designs/ui/portfolio/portfolio_view.dart';

class AppRoutes {
  AppRoutes._();
  static final routes = [
    GetPage(
      name: Globals.routesContact,
      page: () => ContactView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Globals.routesHome,
      page: () => HomeView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Globals.routesAbout,
      page: () => AboutView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Globals.routesPortfolio,
      page: () => PortfolioView(),
      transition: Transition.noTransition,
    ),
  ];
}
