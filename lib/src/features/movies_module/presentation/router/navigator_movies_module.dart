part of '../../_lib.dart';

class NavigatorMoviesModule {
  static void goMovies() {
    NavigatorApp.go(
      RouterMoviesModule.getMovies.access,
    );
  }
}
