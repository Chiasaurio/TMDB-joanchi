part of '../../_lib.dart';

class RemoteMoviesPort {
  final RemoteMoviesAdapterInterface _repository;

  RemoteMoviesPort(this._repository);

  Future<List<Movie>> getTopMovies({int page = 1}) {
    return _repository.getPopularMovies(page: page);
  }

  Future<List<Movie>> searchMovies({String query = '', int page = 1}) {
    return _repository.searchMovies(query: query, page: page);
  }
}
