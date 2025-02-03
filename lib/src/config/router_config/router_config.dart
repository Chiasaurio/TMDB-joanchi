part of '_lib.dart';

class AppRouterConfig {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    initialLocation: RouterMoviesModule.getMovies.access,
    navigatorKey: navigatorKey,
    routes: routes,
  );

  static List<RouteBase> get routes => [
        RouterMoviesModule.declare,
      ];
}
