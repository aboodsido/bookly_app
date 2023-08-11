import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kBackgroundColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: GestureDetector(
          onTap: scrollUp,
          child: SvgPicture.asset(AssetData.logoImage),
        ),
      ),
      elevation: 0,
      leadingWidth: 80.w,
      actions: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchRoute);
          },
          icon: const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
        ),
      ],
      floating: true,
      pinned: true,
      snap: false,
    );
  }

  void scrollUp() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linearToEaseOut);
  }
}
