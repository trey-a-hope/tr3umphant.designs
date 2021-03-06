import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tr3umphant_designs/models/portfolio_app_model.dart';
import 'package:tr3umphant_designs/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioAppWidget extends StatelessWidget {
  const PortfolioAppWidget({Key? key, required this.portfolioApp})
      : super(key: key);

  final PortfolioAppModel portfolioApp;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: Responsive.isMobile(context) ? 25 : 50,
              backgroundImage: Image.network(
                portfolioApp.imagePath,
              ).image,
            ),
            const SizedBox(height: 10),
            Text(
              portfolioApp.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                fontFamily: 'Raleway',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              portfolioApp.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Raleway',
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GFAvatar(
                  backgroundColor: GFColors.PRIMARY,
                  child: IconButton(
                    onPressed: () async {
                      if (!await launch(portfolioApp.iOSLink)) {
                        throw 'Could not launch ${portfolioApp.iOSLink}';
                      }
                    },
                    icon: const Icon(
                      MdiIcons.apple,
                      color: Colors.white,
                    ),
                  ),
                ),
                GFAvatar(
                  backgroundColor: GFColors.PRIMARY,
                  child: IconButton(
                    onPressed: () async {
                      if (!await launch(portfolioApp.androidLink)) {
                        throw 'Could not launch ${portfolioApp.androidLink}';
                      }
                    },
                    icon: const Icon(
                      MdiIcons.android,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
