import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SignInPage,
      path: '/sign-in',
    ),
    AutoRoute(
      page: EmptyRouterScreen,
      path: '/',
      initial: true,
      name: 'MainRoute',
      children: [
        AutoRoute(
          page: HomePage,
          initial: true,
          path: '',
        ),
        AutoRoute(
          page: EmptyRouterScreen,
          name: 'AccountRoute',
          path: 'account',
          children: [
            AutoRoute(
              page: ProfilePage,
              path: '',
              initial: true,
            ),
            AutoRoute(
              page: CodePage,
              path: 'code',
            ),
            AutoRoute(
              page: SettingsPage,
              path: 'settings',
            ),
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
