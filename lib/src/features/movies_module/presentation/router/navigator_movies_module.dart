part of '../../_lib.dart';

class NavigatorMoviesModule {
  static void goMovies() {
    NavigatorApp.go(
      RouterMoviesModule.getMovies.access,
    );
  }

  static void pushMovieDetails(Movie movie) {
    NavigatorApp.push(
      RouterDetailModule.getDetail.access,
      extra: {
        'movie': movie,
      },
    );
  }
}
