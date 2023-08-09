import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/utils/styles.dart';
import 'price_rating_section.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 70.w,
          height: 110.h,
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
        SizedBox(width: 20.w),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Harry Potter and the Goblet of Fire ',
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Styles.titleLarge,
              ),
              SizedBox(height: 5.w),
              Text(
                'J.K. Rowling',
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
              SizedBox(height: 05.w),
              const PriceRatingSection()
            ],
          ),
        ),
      ],
    );
  }
}
