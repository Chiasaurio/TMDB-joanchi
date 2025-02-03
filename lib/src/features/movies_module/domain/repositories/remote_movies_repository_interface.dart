part of '../../_lib.dart';

abstract class RemoteMoviesAdapterInterface {
  Future<List<Movie>> getPopularMovies({int page = 1});
  Future<List<Movie>> searchMovies({String query = '', int page = 1});
}
