import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';
import 'newest_books_listview.dart';
import 'books_listview.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          CustomAppBar(scrollController: _scrollController),
        ];
      },
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FeaturedBooksListView(),
                  SizedBox(height: 30.h),
                  const Text('Newest Books', style: Styles.titleMeduim),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: NewestBooksListView(),
            ),
          ),
        ],
      ),
    );
  }
}
