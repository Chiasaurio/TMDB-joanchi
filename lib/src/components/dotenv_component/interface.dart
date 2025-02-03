part of '_lib.dart';

String getDotEnvVar(String variableName) => dotenv.env[variableName] ?? '';
