import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants.dart';
import 'circle_play_icon.dart';

class BookListviewItem extends StatelessWidget {
  const BookListviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 130.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetData.posterImage),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: const CirclePlayIcon(),
      ),
    );
  }
}
