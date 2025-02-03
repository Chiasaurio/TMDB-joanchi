part of '../../_lib.dart';

class RemoteMoviesRepositoryImpl implements RemoteMoviesAdapterInterface {
  @override
  Future<List<Movie>> getPopularMovies({int page = 1}) async {
    final response = await DioClient().dio.get(
          '/movie/popular',
          queryParameters: {
            'page': '$page',
          },
          options: Options(
            headers: GeneralHeaders.token,
          ),
        );

    if (response.statusCode == 200) {
      final data = response.data;
      return (data['results'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
    } else {
      throw Exception('Failed to load popular movies');
    }
  }

  @override
  Future<List<Movie>> searchMovies({String query = '', int page = 1}) async {
    final response = await DioClient().dio.get(
          '/search/movie',
          queryParameters: {
            'page': '$page',
            'query': query,
          },
          options: Options(
            headers: GeneralHeaders.token,
          ),
        );

    if (response.statusCode == 200) {
      final data = response.data;
      return (data['results'] as List)
          .map((movie) => Movie.fromJson(movie))
          .toList();
    } else {
      throw Exception('Failed to load popular movies');
    }
  }
}
