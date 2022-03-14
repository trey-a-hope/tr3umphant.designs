import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/widgetss/responsive.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    Key? key,
    required this.screenSize,
    required this.globalKey,
    required this.title,
  }) : super(key: key);

  final Size screenSize;

  final GlobalKey globalKey;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: globalKey,
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
    );
  }
}
