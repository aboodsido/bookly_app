import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../book_rating.dart';
import 'book_image.dart';

class BookImageAndTitle extends StatelessWidget {
  const BookImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BookImage(),
        SizedBox(height: 40.h),
        const Text(
          'Walk Alone',
          textAlign: TextAlign.center,
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Styles.titleLarge30,
        ),
        SizedBox(height: 5.h),
        Text(
          'Rudyard Kipling',
          textAlign: TextAlign.center,
          style: Styles.titleMeduim.copyWith(
              color: Colors.white.withOpacity(0.7),
              fontStyle: FontStyle.italic),
        ),
        SizedBox(height: 14.h),
        const BookRating(),
      ],
    );
  }
}
