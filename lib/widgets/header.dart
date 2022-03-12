import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                      SvgPicture.asset("assets/icons/logo.svg"),
                      const Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      const Spacer(),
                      // Socal
                      const Socal(),
                    ],
                  ),
                  const SizedBox(height: Globals.kDefaultPadding * 2),
                  const Text(
                    'Welcome to my website.',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: Globals.kDefaultPadding),
                    child: Text(
                      "Stay updated with the newest design and development stories, case studies, \nand insights shared by DesignDK Team.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        height: 1.5,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            "Learn More",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: Globals.kDefaultPadding / 2),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
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
