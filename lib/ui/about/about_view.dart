import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tr3umphant_designs/responsive.dart';
import 'package:tr3umphant_designs/ui/about/about_view_model.dart';
import 'package:get/get.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/menu_controller.dart';
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
                        title: 'Why We Do It',
                        subTitle: Globals.ourWhy,
                      ),
                      Divider(),
                      CustomViewWidget(
                        imagePath: 'assets/images/computer.jpg',
                        title: 'How We Do It',
                        subTitle: Globals.ourHow,
                      ),
                      Divider(),
                      CustomViewWidget(
                        imagePath: 'assets/images/computer.jpg',
                        title: 'What We Do',
                        subTitle: Globals.ourWhat,
                      ),
                      Divider(),
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

class CustomViewWidget extends StatelessWidget {
  const CustomViewWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String imagePath;

  final String title;

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          height: Responsive.isMobile(context) ? 400 : 250,
          child: Row(
            children: <Widget>[
              SizedBox(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          const Icon(MdiIcons.lightbulbOutline),
                          const SizedBox(width: 10),
                          Text(
                            title,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                      const Divider(),
                      Text(
                        subTitle,
                        style: context.textTheme.headline6,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Theme.of(context).canvasColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
