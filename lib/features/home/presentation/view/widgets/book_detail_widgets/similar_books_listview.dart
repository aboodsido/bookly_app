import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../view_model/similar_books_cubit/similar_books_cubit.dart';
import 'book_listview_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Container(
            padding: const EdgeInsets.only(left: 30),
            height: 120.h,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => GoRouter.of(context).push(
                  AppRouter.kBookDetailRoute,
                  extra: state.books[index],
                ),
                child: SimilarBookListviewItem(
                    imgUrl:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail!),
              ),
              scrollDirection: Axis.horizontal,
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErroWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
