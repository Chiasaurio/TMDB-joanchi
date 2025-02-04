part of '_lib.dart';

class SharePreferenceData {
  static SharedPreferences get _instance => ConfigSharePreferenceData.instance;

  static Future<void> addFavorite(Movie movie) async {
    final favorites = getFavorites;

    favorites.add(movie);

    await _instance.setStringList(
      'favorites',
      favorites.map((movie) => movie.toRawJson()).toList(),
    );
  }

  static Future<void> remove(Movie movie) async {
    final favorites = getFavorites;

    favorites.removeWhere(
      (element) => element.id == movie.id,
    );

    await _instance.setStringList(
      'favorites',
      favorites.map((movie) => movie.toRawJson()).toList(),
    );
  }

  static List<Movie> get getFavorites {
    final favorites = _instance.getStringList('favorites');
    if (favorites == null) return [];
    return favorites
        .map(
          (element) => Movie.fromRawJson(element),
        )
        .toList();
  }
}
