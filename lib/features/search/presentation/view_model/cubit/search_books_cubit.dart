import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/search_repo.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String searchText}) async {
    emit(SearchBooksLoading());
    Either<Failure, List<BookModel>> result =
        await searchRepo.fetchSearchedBooks(searchText: searchText);

    result.fold(
      (failure) => emit(SearchBooksFailure(failure.errMessage)),
      (books) => emit(SearchBooksSuccess(books)),
    );
  }
}
