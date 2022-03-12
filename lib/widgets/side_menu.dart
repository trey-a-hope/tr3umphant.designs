import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/menu_controller.dart';

class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);

  final MenuController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Globals.kDarkBlackColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Globals.kDefaultPadding * 3.5),
                  child: SvgPicture.asset("assets/icons/logo.svg"),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  title: _controller.menuItems[index],
                  press: () {
                    _controller.setMenuIndex(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: Globals.kDefaultPadding),
        selected: isActive,
        selectedTileColor: Globals.kPrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
