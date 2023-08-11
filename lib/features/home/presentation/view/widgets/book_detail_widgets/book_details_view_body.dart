import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_detail_button.dart';
import 'book_image_and_title.dart';
import 'books_listview_in_book_detail.dart';
import 'custom_book_detail_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBookDetailAppbar(),
              SizedBox(height: 10.h),
              const BookImageAndTitle(),
              SizedBox(height: 30.h),
              const Center(child: BookDetailButton()),
              Expanded(child: SizedBox(height: 30.h)),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('You can also like',
                    style: TextStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.w600)),
              ),
              SizedBox(height: 10.h),
              const BooksListViewInBookDetail(),
              SizedBox(height: 20.h),
            ],
          ),
        )
      ],
    );
  }
}
