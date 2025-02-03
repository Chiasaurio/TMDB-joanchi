part of '_lib.dart';

class GeneralHeaders {
  static Map<String, String> get token => {
        'Authorization': 'Bearer ${getDotEnvVar('TMDB_BEARER_TOKEN')}',
      };
}
