part of '_lib.dart';

class AppRouterConfig {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    initialLocation: RouterSplashModule.getSplash.access,
    navigatorKey: navigatorKey,
    routes: routes,
  );

  static List<RouteBase> get routes => [
        RouterSplashModule.declare,
        RouterHomeModule.declare,
      ];
}
