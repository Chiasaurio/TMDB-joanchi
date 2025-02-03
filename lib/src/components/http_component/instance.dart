part of '_lib.dart';

class DioClient {
  DioClient._internal() {
    _dio = Dio(
      BaseOptions(
          baseUrl: 'https://api.themoviedb.org/3',
          queryParameters: {'language': 'en-US'}),
    );

    /*  _dio.interceptors.add(
      LogInterceptor(
        responseBody: true,
        responseHeader: false,
        request: false,
        requestHeader: false,
        requestBody: false,
      ),
    ); */
  }

  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  late final Dio _dio;

  Dio get dio => _dio;
}
