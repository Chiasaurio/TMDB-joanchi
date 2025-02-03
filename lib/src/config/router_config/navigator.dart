part of '_lib.dart';

class NavigatorApp {
  static get navigatorKey => AppRouterConfig.navigatorKey;

  static void go(
    String location, {
    Object? extra,
  }) {
    AppRouterConfig.router.go(
      location,
      extra: extra,
    );
  }

  static Future<void> push(
    String location, {
    Object? extra,
  }) async {
    await AppRouterConfig.router.push(
      location,
      extra: extra,
    );
  }

  static void goNamed(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
    Object? extra,
  }) {
    AppRouterConfig.router.goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  static Future<void> pushNamed(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
    Object? extra,
  }) async {
    await AppRouterConfig.router.pushNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  static void pop() => AppRouterConfig.router.pop();

  static void pushReplacement(
    String location, {
    Object? extra,
  }) {
    AppRouterConfig.router.pushReplacement(
      location,
      extra: extra,
    );
  }

  static void pushReplacementNamed(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
    Object? extra,
  }) {
    AppRouterConfig.router.pushReplacementNamed(
      name,
      queryParameters: queryParameters,
      pathParameters: pathParameters,
      extra: extra,
    );
  }

  static void replace(
    String location, {
    Object? extra,
  }) {
    AppRouterConfig.router.replace(
      location,
      extra: extra,
    );
  }
}
