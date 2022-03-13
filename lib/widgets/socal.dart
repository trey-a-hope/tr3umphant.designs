import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  const Social({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            MdiIcons.instagram,
            color: Colors.white,
          ),
          onPressed: () async {
            // Open Instagram page.
            if (!await launch(Globals.instagramUrl)) {
              throw 'Could not launch ${Globals.instagramUrl}';
            }
          },
        ),
      ],
    );
  }
}
