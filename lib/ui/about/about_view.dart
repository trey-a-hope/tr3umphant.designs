import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/ui/about/about_view_model.dart';
import 'package:get/get.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/menu_controller.dart';
import 'package:tr3umphant_designs/widgets/custom_view_widget.dart';
import 'package:tr3umphant_designs/widgets/header.dart';
import 'package:tr3umphant_designs/widgets/side_menu.dart';

class AboutView extends StatelessWidget {
  AboutView({
    Key? key,
  }) : super(key: key);

  final MenuController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutViewModel>(
      init: AboutViewModel(),
      builder: (model) => Scaffold(
        key: _controller.scaffoldkey,
        drawer: SideMenu(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Container(
                padding: const EdgeInsets.all(Globals.kDefaultPadding),
                constraints: const BoxConstraints(maxWidth: Globals.kMaxWidth),
                child: SafeArea(
                  child: Column(
                    children: const <Widget>[
                      CustomViewWidget(
                        imagePath: 'assets/images/computer.jpg',
                        title: 'Why',
                        subTitle: 'What is our purpose?',
                        message: Globals.ourWhy,
                        color: Colors.lightGreen,
                      ),
                      CustomViewWidget(
                        imagePath: 'assets/images/computer.jpg',
                        title: 'How',
                        subTitle: 'What is our approach?',
                        message: Globals.ourHow,
                        color: Colors.lightBlue,
                      ),
                      CustomViewWidget(
                        imagePath: 'assets/images/computer.jpg',
                        title: 'What',
                        subTitle: 'What is the service?',
                        message: Globals.ourWhat,
                        color: Colors.purpleAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
