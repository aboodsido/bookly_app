import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repo_impl/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/book_details_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/search/presentation/view/search_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';
import '../models/book_model/book_model.dart';

abstract class AppRouter {
  static const kHomeRoute = '/home';
  static const kBookDetailRoute = '/bookDetails';
  static const kSearchRoute = '/search';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailRoute,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
