import 'package:driver/features/Auth/presentation/views/sign_in_view.dart';
import 'package:driver/features/Auth/presentation/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String signInView = '/';
  static const String signUpView = '/signUpView';

  static final router = GoRouter(
    routes: <RouteBase>[
      /*GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),*/
      GoRoute(
        path: signInView,
        builder: (BuildContext context, GoRouterState state) {
          return const SignInView();
        },
      ),
      GoRoute(
        path: signUpView,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpView();
        },
      ),
    ],
  );
}
