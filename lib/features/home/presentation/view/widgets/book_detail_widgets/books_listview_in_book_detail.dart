import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_listview_item.dart';

class BooksListViewInBookDetail extends StatelessWidget {
  const BooksListViewInBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      height: 120.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => const BookListviewItemInBookDetail(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}