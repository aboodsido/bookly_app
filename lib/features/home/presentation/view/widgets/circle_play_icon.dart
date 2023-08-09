import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CirclePlayIcon extends StatelessWidget {
  const CirclePlayIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Align(
        alignment: Alignment.bottomRight,
        child: ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              width: 35.w,
              height: 35.h,
              color: Colors.transparent,
              child: const Icon(
                FontAwesomeIcons.play,
                size: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
