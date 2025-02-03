part of '../../_lib.dart';

class RouterDetailModule {
  static RouterNameModel get getDetail {
    return const RouterNameModel(
      name: 'detail',
      path: 'detail',
      access: '/detail',
    );
  }

  static GoRouteApp get declare {
    return GoRouteApp(
      path: getDetail.path,
      name: getDetail.name,
      builder: (context, state) {
        return DetailPageMoviesModule();
      },
    );
  }
}
