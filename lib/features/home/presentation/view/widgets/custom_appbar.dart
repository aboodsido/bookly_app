import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AssetData.logoImage),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
