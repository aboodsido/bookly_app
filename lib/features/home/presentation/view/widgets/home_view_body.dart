import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_item.dart';
import 'books_listview.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(height: 20.h),
          const BooksListView(),
          SizedBox(height: 30.h),
          const Text('Best Seller', style: Styles.titleMeduim),
          SizedBox(height: 20.h),
          const BestSellerItem(),
        ],
      ),
    );
  }
}
