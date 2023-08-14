import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, this.rating, required this.ratingCount,
  });

  final dynamic rating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.yellow,
        ),
        SizedBox(width: 4.sp),
        Text(
          '$rating',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 4.sp),
        Text(
          '($ratingCount)',
          style: TextStyle(fontSize: 15.sp, color: Colors.grey),
        ),
      ],
    );
  }
}
