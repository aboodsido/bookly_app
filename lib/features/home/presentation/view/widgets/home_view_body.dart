import 'package:flutter/material.dart';

import 'book_listview_item.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 40),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 20),
          BookListviewItem(),
        ],
      ),
    );
  }
}
