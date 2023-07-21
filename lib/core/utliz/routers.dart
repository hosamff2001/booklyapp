import 'package:booklyapp/features/Splash/presentation/view/splashview.dart';
import 'package:booklyapp/features/home/presentation/view/bookdetils.dart';
import 'package:booklyapp/features/home/presentation/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/search/presentation/view/searchscreen.dart';

abstract class AppRouter {
  static String kHomePath = "/HomeView";
  static String kSearchPath = "/SearchView";
  static String kBookDetailsPath = "/BookDetails";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kSearchPath,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: kHomePath,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsPath,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetils();
        },
      ),
    ],
  );
}
