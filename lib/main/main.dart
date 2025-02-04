import 'package:asd_test/main/app_wrapper.dart';
import 'package:flutter/material.dart';

import '../src/components/dotenv_component/_lib.dart';
import '../src/features/movies_module/infrastructure/datasources/share_preference_data/_lib.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DotEnvComponent.loadDotEnvFile();
  await ConfigSharePreferenceData.init();

  runApp(const AppWrapper());
}
