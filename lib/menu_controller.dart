import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/responsive.dart';

class MenuController extends GetxController {
  /// Key of of scaffold.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;

  /// Selected index in the menu.
  final RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;

  /// Menu items.
  List<String> get menuItems => [
        'Home',
        'About Us',
        'Portfolio',
        'Contact Us',
      ];

  /// Get storage instance.
  final GetStorage _getStorage = Get.find();

  @override
  void onInit() async {
    super.onInit();

    // Set menu index to last visited page.
    int menuIndex = _getStorage.read(Globals.menuIndex) ?? 0;
    setMenuIndex(index: menuIndex);
  }

  /// Toggle the menu drawer.
  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  /// Set the menu item index.
  void setMenuIndex({required int index, BuildContext? context}) {
    // Update the index.
    _selectedIndex.value = index;

    // Save selected index to get storage.
    _getStorage.write(Globals.menuIndex, index);

    // Close the menu drawer, (of on mobile).
    if (context != null && !Responsive.isDesktop(context)) {
      openOrCloseDrawer();
    }

    // Navigate to the specified page.
    switch (_selectedIndex.value) {
      case 0:
        Get.toNamed(Globals.routesHome);
        break;
      case 1:
        Get.toNamed(Globals.routesAbout);
        break;
      case 2:
        Get.toNamed(Globals.routesPortfolio);
        break;
      case 3:
        Get.toNamed(Globals.routesContact);
        break;
    }
  }
}
