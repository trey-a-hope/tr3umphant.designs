import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tr3umphant_designs/constants/globals.dart';
import '../../../responsive.dart';

class Socal extends StatelessWidget {
  const Socal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/behance-alt.svg"),
        if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Globals.kDefaultPadding / 2),
            child: SvgPicture.asset("assets/icons/feather_dribbble.svg"),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset("assets/icons/feather_twitter.svg"),
        const SizedBox(width: Globals.kDefaultPadding),
        ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: Globals.kDefaultPadding * 1.5,
              vertical: Globals.kDefaultPadding /
                  (Responsive.isDesktop(context) ? 1 : 2),
            ),
          ),
          child: const Text("Let's Talk"),
        ),
      ],
    );
  }
}
