part of '../../_lib.dart';

class LocalMoviesRepositoryImpl implements FavoriteMoviesAdapterInterface {
  @override
  Future<void> addFavoriteMovie(Movie movie) {
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getFavoriteMovies() {
    throw UnimplementedError();
  }

  @override
  Future<void> removeFavoriteMovie(Movie movie) {
    throw UnimplementedError();
  }
}
