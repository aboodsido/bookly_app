import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

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
          '4.5',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 4.sp),
        Text(
          '(2390)',
          style: TextStyle(fontSize: 15.sp, color: Colors.grey),
        ),
      ],
    );
  }
}
