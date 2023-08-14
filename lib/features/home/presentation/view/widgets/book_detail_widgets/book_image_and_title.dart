import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../data/models/book_model/book_model.dart';
import '../book_rating.dart';
import 'book_image.dart';

class BookImageAndTitle extends StatelessWidget {
  const BookImageAndTitle({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookImage(
          imgUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
        ),
        SizedBox(height: 30.h),
        Text(
          bookModel.volumeInfo!.title!,
          textAlign: TextAlign.center,
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Styles.titleLarge30,
        ),
        SizedBox(height: 5.h),
        Text(
          bookModel.volumeInfo!.authors!.first,
          textAlign: TextAlign.center,
          style: Styles.titleMeduim.copyWith(
              fontSize: 16.sp,
              color: Colors.white.withOpacity(0.7),
              fontStyle: FontStyle.italic),
        ),
        SizedBox(height: 14.h),
        BookRating(
          rating: bookModel.volumeInfo!.averageRating ?? 0.0,
          ratingCount: bookModel.volumeInfo!.ratingsCount ?? 0,
        ),
      ],
    );
  }
}
