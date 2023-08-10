import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/utils/styles.dart';
import '../book_rating.dart';

class BookImageAndTitle extends StatelessWidget {
  const BookImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 160.w,
          height: 230.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetData.posterImage),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
        SizedBox(height: 40.h),
        const Text(
          'Harry Potter and the Goblet of Fire ',
          textAlign: TextAlign.center,
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Styles.titleLarge30,
        ),
        SizedBox(height: 4.h),
        Text(
          'Rudyard Kipling',
          textAlign: TextAlign.center,
          style: Styles.titleMeduim.copyWith(color: const Color(0xff707070)),
        ),
        SizedBox(height: 14.h),
        const BookRating(),
      ],
    );
  }
}
