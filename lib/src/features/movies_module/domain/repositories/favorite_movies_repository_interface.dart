part of '../../_lib.dart';

abstract class FavoriteMoviesAdapterInterface {
  Future<List<Movie>> getFavoriteMovies();
  Future<void> addFavoriteMovie(Movie movie);
  Future<void> removeFavoriteMovie(Movie movie);
}
