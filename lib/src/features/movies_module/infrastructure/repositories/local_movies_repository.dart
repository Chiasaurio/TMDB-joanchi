part of '../../_lib.dart';

class LocalMoviesRepositoryImpl implements FavoriteMoviesAdapterInterface {
  @override
  Future<List<Movie>> getFavoriteMovies() {
    throw UnimplementedError();
  }

  @override
  Future<bool> addFavoriteMovie(Movie movie) {
    throw UnimplementedError();
  }

  @override
  Future<bool> removeFavoriteMovie(Movie movie) {
    throw UnimplementedError();
  }
}
