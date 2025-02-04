part of '../../_lib.dart';

class FavoriteMoviesPort {
  final FavoriteMoviesAdapterInterface _resource;

  FavoriteMoviesPort(this._resource);

  Future<List<Movie>> getFavoriteMovies() {
    return _resource.getFavoriteMovies();
  }

  Future<bool> checkIfItsFavorite(Movie movie) async {
    final data = await _resource.getFavoriteMovies();

    final index = data.indexWhere((element) => element.id == movie.id);
    if (index < 0) {
      return false;
    }
    return true;
  }

  Future<void> addFavoriteMovie(Movie movie) {
    return _resource.addFavoriteMovie(movie);
  }

  Future<void> removeFavoriteMovie(Movie movie) {
    return _resource.removeFavoriteMovie(movie);
  }
}
