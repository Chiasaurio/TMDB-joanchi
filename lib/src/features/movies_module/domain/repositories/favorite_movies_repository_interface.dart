part of '../../_lib.dart';

abstract class FavoriteMoviesAdapterInterface {
  Future<List<Movie>> getFavoriteMovies();
  Future<bool> addFavoriteMovie(Movie movie);
  Future<bool> removeFavoriteMovie(Movie movie);
}
