import 'package:asd_test/main/app.dart';
import 'package:flutter/material.dart';

import '../src/components/dotenv_component/_lib.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DotEnvComponent.loadDotEnvFile();

  runApp(const MyApp());
}
