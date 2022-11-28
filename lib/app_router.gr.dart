// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    AccountRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    CodeRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<CodeRouteArgs>(
          orElse: () => CodeRouteArgs(code: queryParams.optString('code')));
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: CodePage(
          key: args.key,
          code: args.code,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        RouteConfig(
          MainRoute.name,
          path: '/',
          children: [
            RouteConfig(
              HomeRoute.name,
              path: '',
              parent: MainRoute.name,
            ),
            RouteConfig(
              AccountRoute.name,
              path: 'account',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: AccountRoute.name,
                ),
                RouteConfig(
                  CodeRoute.name,
                  path: 'code',
                  parent: AccountRoute.name,
                ),
                RouteConfig(
                  SettingsRoute.name,
                  path: 'settings',
                  parent: AccountRoute.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [EmptyRouterScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [EmptyRouterScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          path: 'account',
          initialChildren: children,
        );

  static const String name = 'AccountRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [CodePage]
class CodeRoute extends PageRouteInfo<CodeRouteArgs> {
  CodeRoute({
    Key? key,
    String? code,
  }) : super(
          CodeRoute.name,
          path: 'code',
          args: CodeRouteArgs(
            key: key,
            code: code,
          ),
          rawQueryParams: {'code': code},
        );

  static const String name = 'CodeRoute';
}

class CodeRouteArgs {
  const CodeRouteArgs({
    this.key,
    this.code,
  });

  final Key? key;

  final String? code;

  @override
  String toString() {
    return 'CodeRouteArgs{key: $key, code: $code}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}
