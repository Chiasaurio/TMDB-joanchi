part of '../../_lib.dart';

class FavoriteMoviesState {
  late FavoriteMoviesPort favoriteMoviesPort;

  init() {
    favoriteMoviesPort = FavoriteMoviesPort(LocalMoviesRepositoryImpl());
  }

  addMovieToFavorites(Movie movie) async {
    final res = await favoriteMoviesPort.addFavoriteMovie(movie);
    return res;
  }
}
