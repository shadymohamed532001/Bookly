// ignore_for_file: constant_identifier_names

import 'package:bookly/Features/Home/presentation/Views/Home.dart';
import 'package:bookly/Features/Home/presentation/Views/booksDetailsView.dart';
import 'package:bookly/Features/serach/presentation/Views/SeachView.dart';
import 'package:bookly/Features/splash/presentation/Views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String KhomeView = '/HomeView';
  static const String KSearchsView = '/SearchView';
  static const String KbookDietilsView = '/booksDetailsView';
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KSearchsView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: KhomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KbookDietilsView,
        builder: (context, state) => const booksDetailsView(),
      ),
    ],
  );
}
