import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:tr3umphant_designs/widgets/section_heading.dart';
import 'package:tr3umphant_designs/widgetss/responsive.dart';

class AboutSection extends StatelessWidget {
  AboutSection({
    Key? key,
    required this.screenSize,
    required this.aboutGlobalKey,
  }) : super(key: key);

  final Size screenSize;

  final GlobalKey aboutGlobalKey;

  final List<String> assets = [
    'assets/images/trekking.jpg',
    'assets/images/animals.jpg',
    'assets/images/photography.jpeg',
  ];

  final List<String> question = [
    'Our Why',
    'Our How',
    'Our What',
  ];

  final List<String> title = [
    Globals.ourWhy,
    Globals.ourHow,
    Globals.ourWhat,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeading(
          screenSize: screenSize,
          globalKey: aboutGlobalKey,
          title: 'About Us',
        ),
        ResponsiveWidget.isSmallScreen(context)
            ? Padding(
                padding: EdgeInsets.only(top: screenSize.height / 50),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenSize.width / 15),
                      ...Iterable<int>.generate(assets.length).map(
                        (int pageIndex) => Row(
                          children: [
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screenSize.width / 2.5,
                                  width: screenSize.width / 1.5,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.asset(
                                      assets[pageIndex],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: screenSize.height / 70,
                                  ),
                                  child: Text(
                                    question[pageIndex],
                                    style: const TextStyle(
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: screenSize.height / 70,
                                  ),
                                  child: SizedBox(
                                    width: screenSize.width * 0.6,
                                    height: 150,
                                    child: Text(
                                      title[pageIndex],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: screenSize.width / 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height * 0.06,
                  left: screenSize.width / 15,
                  right: screenSize.width / 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...Iterable<int>.generate(assets.length).map(
                      (int pageIndex) => Column(
                        children: [
                          SizedBox(
                            height: screenSize.width / 6,
                            width: screenSize.width / 3.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                assets[pageIndex],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 70,
                            ),
                            child: Text(
                              question[pageIndex],
                              style: const TextStyle(
                                fontSize: 21,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenSize.height / 70,
                            ),
                            child: SizedBox(
                              width: screenSize.width * 0.2,
                              height: 150,
                              child: Text(
                                title[pageIndex],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //     top: screenSize.height / 70,
                          //   ),
                          //   child: Text(
                          //     title[pageIndex],
                          //     style: TextStyle(
                          //       fontSize: 16,
                          //       fontFamily: 'Montserrat',
                          //       fontWeight: FontWeight.w500,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
