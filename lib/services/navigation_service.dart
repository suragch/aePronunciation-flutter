import 'package:aepronunciation/pages/learn/learn_page.dart';
import 'package:aepronunciation/pages/main_screen.dart';
import 'package:aepronunciation/pages/practice/practice_page.dart';
import 'package:aepronunciation/pages/test/test_page.dart';
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
                return MainScreen();
              },
              branches: [
                StatefulShellBranch(initialLocation: '/home', routes: [
                  GoRoute(
                    path: '/learn',
                    builder: (context, state) => LearnPage(),
                  ),
                ]),
                StatefulShellBranch(initialLocation: '/home', routes: [
                  GoRoute(
                    path: '/practice',
                    builder: (context, state) => PracticePage(),
                  ),
                ]),
                StatefulShellBranch(initialLocation: '/home', routes: [
                  GoRoute(
                    path: '/test',
                    builder: (context, state) => TestPage(),
                  ),
                ]),
              ]),
        ]);
  }
}
