import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CustomViewWidget extends StatelessWidget {
  const CustomViewWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    required this.message,
    required this.color,
  }) : super(key: key);

  final String imagePath;

  final String title;

  final String subTitle;

  final String message;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return GFCard(
      color: color,
      boxFit: BoxFit.cover,
      // image: Image.asset('assets/images/computer.jpg'),
      title: GFListTile(
        avatar: GFAvatar(
          backgroundImage: Image.asset(imagePath).image,
        ),
        title: Text(title,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Raleway',
            )),
        subTitle: Text(subTitle,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Raleway',
            )),
      ),
      content: Text(
        message,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontFamily: 'Raleway',
        ),
      ),
    );
  }
}
