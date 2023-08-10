import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../book_rating.dart';

class PriceRatingSection extends StatelessWidget {
  const PriceRatingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '19.99 €',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        const BookRating(),
      ],
    );
  }
}
