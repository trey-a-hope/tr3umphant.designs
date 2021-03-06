import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/menu_controller.dart';
import 'package:tr3umphant_designs/responsive.dart';
import 'package:tr3umphant_designs/ui/portfolio/portfolio_view_model.dart';
import 'package:tr3umphant_designs/widgets/header.dart';
import 'package:tr3umphant_designs/widgets/page_image.dart';
import 'package:tr3umphant_designs/widgets/portfolio_app_widget.dart';
import 'package:tr3umphant_designs/widgets/pricing_widget.dart';
import 'package:tr3umphant_designs/widgets/side_menu.dart';

class PricingView extends StatelessWidget {
  PricingView({
    Key? key,
  }) : super(key: key);

  final MenuController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PortfolioViewModel>(
      init: PortfolioViewModel(),
      builder: (model) => Scaffold(
        key: _controller.scaffoldkey,
        drawer: SideMenu(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              const PageImage(
                imagePath: Globals.blackIllustration1,
                title: 'Pricing',
              ),
              Container(
                padding: const EdgeInsets.all(Globals.kDefaultPadding),
                constraints: const BoxConstraints(maxWidth: Globals.kMaxWidth),
                child: SafeArea(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 3 / 4,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: Globals.prices.length,
                    itemBuilder: (BuildContext ctx, index) => PricingWidget(
                      price: Globals.prices[index],
                    ),
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
