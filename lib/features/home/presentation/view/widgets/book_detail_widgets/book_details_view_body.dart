import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_image_and_title.dart';
import 'custom_book_detail_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      child: Column(
        children: [
          const CustomBookDetailAppbar(),
          SizedBox(height: 30.h),
          const BookImageAndTitle(),
        ],
      ),
    );
  }
}
