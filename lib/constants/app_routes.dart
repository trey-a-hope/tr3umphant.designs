import 'package:get/get.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/ui/contact/contact_view.dart';
import 'package:tr3umphant_designs/ui/home/home_view.dart';
import 'package:tr3umphant_designs/ui/main/main_view.dart';

class AppRoutes {
  AppRoutes._();
  static final routes = [
    GetPage(name: '/', page: () => MainScreen()),
    GetPage(name: Globals.routesContact, page: () => const ContactView()),
    GetPage(name: Globals.routesHome, page: () => const HomeScreen()),
  ];
}
