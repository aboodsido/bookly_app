import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';
import 'price_rating_section.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailRoute),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70.w,
              height: 110.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      bookModel.volumeInfo!.imageLinks!.thumbnail!),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            SizedBox(width: 30.w),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookModel.volumeInfo!.title!,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.titleLarge20,
                  ),
                  SizedBox(height: 5.w),
                  Text(
                    bookModel.volumeInfo!.authors!.first,
                    style:
                        TextStyle(color: Colors.grey.shade400, fontSize: 14.sp),
                  ),
                  SizedBox(height: 05.w),
                  PriceRatingSection(
                    ratingCount: bookModel.volumeInfo!.ratingsCount ?? 0,
                    rating: bookModel.volumeInfo!.averageRating ?? 0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
