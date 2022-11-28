import 'package:flutter/material.dart';
import 'package:flutter_application_5/auth_service.dart';

import 'app_router.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final authService = AuthService.instance;

    return AnimatedBuilder(
      animation: authService,
      builder: (context, _) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.blue),
          routerDelegate: _appRouter.declarativeDelegate(
            routes: (handler) {
              if (!authService.isAuthorized) {
                return [const SignInRoute()];
              }

              final pendingRoutes = handler.initialPendingRoutes;
              return pendingRoutes ?? [const MainRoute()];
            },
          ),
          routeInformationParser: _appRouter.defaultRouteParser(includePrefixMatches: true),
        );
      },
    );
  }
}

