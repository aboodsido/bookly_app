import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../book_rating.dart';

class PriceRatingSection extends StatelessWidget {
  const PriceRatingSection({
    super.key,
    this.rating,
    required this.ratingCount,
  });

  final dynamic rating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Free',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        BookRating(
          ratingCount: ratingCount,
          rating: rating,
        ),
      ],
    );
  }
}
