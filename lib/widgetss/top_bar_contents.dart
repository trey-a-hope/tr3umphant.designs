import 'package:flutter/material.dart';
import 'package:tr3umphant_designs/widgets/socal.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  final GlobalKey aboutGlobalKey;

  final GlobalKey portfolioGlobalKey;

  TopBarContents({
    required this.opacity,
    required this.aboutGlobalKey,
    required this.portfolioGlobalKey,
  });

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {
                  Scrollable.ensureVisible(
                      widget.aboutGlobalKey.currentContext!);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About Us',
                      style: TextStyle(
                        color: _isHovering[0]
                            ? Colors.blue.shade200
                            : Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 20),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                onTap: () {
                  Scrollable.ensureVisible(
                      widget.portfolioGlobalKey.currentContext!);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Portfolio',
                      style: TextStyle(
                        color: _isHovering[1] ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 20),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Pricing',
                      style: TextStyle(
                        color: _isHovering[2] ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 20),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        color: _isHovering[2] ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
