import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:tr3umphant_designs/constants/globals.dart';

class MenuController extends GetxController {
  /// Key of of scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  /// Selected index in the menu.
  final RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  /// Menu items.
  List<String> get menuItems => [
        "Cases",
        "Services",
        "About Us",
        "Careers",
        "Blog",
        "Contact",
      ];

  /// Toggle the menu drawer.
  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  /// Set the menu item index.
  void setMenuIndex(int index) {
    // Update the index.
    _selectedIndex.value = index;

    // Navigate to the specified page.
    if (_selectedIndex.value == 1) {
      Get.toNamed(Globals.routesContact);
    }
  }
}
