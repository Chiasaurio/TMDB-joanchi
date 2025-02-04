part of '../../_lib.dart';

class LocalMoviesRepositoryImpl implements FavoriteMoviesAdapterInterface {
  @override
  Future<List<Movie>> getFavoriteMovies() async {
    return SharePreferenceData.getFavorites;
  }

  @override
  Future<void> addFavoriteMovie(Movie movie) async {
    return SharePreferenceData.addFavorite(movie);
  }

  @override
  Future<void> removeFavoriteMovie(Movie movie) async {
    return SharePreferenceData.remove(movie);
  }
}
