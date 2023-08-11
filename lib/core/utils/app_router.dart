import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/book_details_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/search/presentation/view/search_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
