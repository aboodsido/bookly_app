import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    Either<Failure, List<BookModel>> result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errMessage)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
