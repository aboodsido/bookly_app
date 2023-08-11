import 'package:bookly_app/features/search/presentation/view/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const CustomSearchTextField(),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: const Text('Search Result'),
        ),
        SizedBox(height: 16.h),
        const Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
