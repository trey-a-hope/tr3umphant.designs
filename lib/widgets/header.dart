import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/menu_controller.dart';
import 'package:tr3umphant_designs/responsive.dart';
import 'package:tr3umphant_designs/widgets/socal.dart';
import 'package:tr3umphant_designs/widgets/web_menu.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  final MenuController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Globals.kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: Globals.kMaxWidth),
              padding: const EdgeInsets.all(Globals.kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      Image.asset(Globals.businessLogo, width: 50),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      const Spacer(),
                      const Social(),
                    ],
                  ),
                  const SizedBox(height: Globals.kDefaultPadding * 2),
                  const Text(
                    'Tr3umphant.Designs',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: Globals.kDefaultPadding),
                    child: Text(
                      'Custom solutions for everyday problems.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        height: 1.5,
                      ),
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    const SizedBox(height: Globals.kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
