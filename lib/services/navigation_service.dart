import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  final mainNavigationKey = GlobalKey<NavigatorState>();

  GoRouter get router {
    return GoRouter(
        navigatorKey: mainNavigationKey,
        initialLocation: '/home',
        routes: [
          StatefulShellRoute.indexedStack(
              parentNavigatorKey: mainNavigationKey,
              builder: (context, state, navigationShell) {
                return Placeholder();
              },
              branches: [
                StatefulShellBranch(initialLocation: '/home', routes: [
                  GoRoute(
                    path: '/learn',
                    builder: (context, state) => Placeholder(),
                  ),
                ]),
                StatefulShellBranch(initialLocation: '/home', routes: [
                  GoRoute(
                    path: '/practice',
                    builder: (context, state) => Placeholder(),
                  ),
                ]),
                StatefulShellBranch(initialLocation: '/home', routes: [
                  GoRoute(
                    path: '/test',
                    builder: (context, state) => Placeholder(),
                  ),
                ]),
              ]),
        ]);
  }
}
