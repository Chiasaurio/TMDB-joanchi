part of '_lib.dart';

class DotEnvComponent {
  static Future<void> loadDotEnvFile() async =>
      await dotenv.load(fileName: 'assets/dotenv/.env');
}
