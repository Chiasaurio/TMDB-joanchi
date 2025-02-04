part of '../../_lib.dart';

class FavoriteMoviesPort {
  final FavoriteMoviesAdapterInterface _resource;

  FavoriteMoviesPort(this._resource);

  Future<List<Movie>> getFavoriteMovies() {
    return _resource.getFavoriteMovies();
  }

  Future<bool> addFavoriteMovie(Movie movie) {
    return _resource.addFavoriteMovie(movie);
  }
}
