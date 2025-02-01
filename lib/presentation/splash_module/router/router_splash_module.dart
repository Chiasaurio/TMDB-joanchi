part of '../_lib.dart';

class RouterSplashModule {
  static RouterNameModel get getSplash {
    return const RouterNameModel(
      name: 'splash',
      path: '/splash',
      access: '/splash',
    );
  }

  static GoRouteApp get declare {
    return GoRouteApp(
      path: getSplash.path,
      name: getSplash.name,
      builder: (context, state) {
        return const MainPageSplash();
      },
    );
  }
}
