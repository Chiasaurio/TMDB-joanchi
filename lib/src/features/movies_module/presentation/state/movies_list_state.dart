part of '../../_lib.dart';

class MoviesListModel extends ChangeNotifier {
  late RemoteMoviesPort remoteMoviesPort;
  late FavoriteMoviesPort favoriteMoviesPort;
  MoviesListModel() {
    remoteMoviesPort = RemoteMoviesPort(RemoteMoviesRepositoryImpl());
    favoriteMoviesPort = FavoriteMoviesPort(LocalMoviesRepositoryImpl());

    getTopMovies();
  }

  List<Movie> _movies = [];
  List<Movie> get movies => _movies;

  bool _loading = false;
  bool get loading => _loading;

  final TextEditingController _queryController = TextEditingController();
  TextEditingController get queryController => _queryController;

  int _page = 1;

  int get page => _page;

  _setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setPage(int value) {
    _page = value;
  }

  Future<List<Movie>> getFavorites() async {
    return await favoriteMoviesPort.getFavoriteMovies();
  }

  addToFavorite(Movie movie) {
    favoriteMoviesPort.addFavoriteMovie(movie);
    notifyListeners();
  }

  removeFavorite(Movie movie) {
    favoriteMoviesPort.removeFavoriteMovie(movie);
    notifyListeners();
  }

  getTopMovies({bool paginated = false}) async {
    _setLoading(true);
    final res = await remoteMoviesPort.getTopMovies(page: page);
    if (paginated) {
      _movies = [
        ..._movies,
        ...res,
      ];
    }
    if (!paginated) {
      _movies = res;
    }
    _loading = false;
    notifyListeners();
  }

  searchMovies({bool paginated = false}) async {
    _setLoading(false);
    final res = await remoteMoviesPort.searchMovies(
      query: queryController.text,
      page: page,
    );
    if (paginated) {
      _movies = [
        ..._movies,
        ...res,
      ];
    }
    if (!paginated) {
      _movies = res;
    }
    _loading = false;
    notifyListeners();
  }
}
