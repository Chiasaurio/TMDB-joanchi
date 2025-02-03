part of '../../_lib.dart';

class RouterMoviesModule {
  static RouterNameModel get getMovies {
    return const RouterNameModel(
      name: 'movies',
      path: '/movies',
      access: '/movies',
    );
  }

  static GoRouteApp get declare {
    return GoRouteApp(
      path: getMovies.path,
      name: getMovies.name,
      builder: (context, state) {
        return MainPageMoviesModule();
      },
      routes: [
        RouterDetailModule.declare,
      ],
    );
  }
}
