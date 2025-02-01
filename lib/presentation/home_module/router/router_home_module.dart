part of '../_lib.dart';

class RouterHomeModule {
  static RouterNameModel get getHome {
    return const RouterNameModel(
      name: 'home',
      path: '/home',
      access: '/home',
    );
  }

  static GoRouteApp get declare {
    return GoRouteApp(
      path: getHome.path,
      name: getHome.name,
      builder: (context, state) {
        return MyHomePage();
      },
    );
  }
}
