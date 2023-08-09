import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import 'circle_play_icon.dart';

class BookListviewItem extends StatelessWidget {
  const BookListviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 190.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AssetData.posterImage),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const CirclePlayIcon(),
    );
  }
}
