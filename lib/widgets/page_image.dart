import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/responsive.dart';

class PageImage extends StatelessWidget {
  const PageImage({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  final String title;

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: Responsive.isMobile(context) ? 200 : 500,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            fontFamily: 'Raleway',
          ),
        ),
      ],
    );
  }
}
