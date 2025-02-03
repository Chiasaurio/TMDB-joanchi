import 'package:flutter/material.dart';

import '../src/config/router_config/_lib.dart';
import '../src/config/style_config/_lib.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return getMaterialApp();
  }

  MaterialApp getMaterialApp() {
    return MaterialApp.router(
      // scaffoldMessengerKey: SnackbarMolecule.scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      title: 'TMDB APP',
      routerDelegate: AppRouterConfig.router.routerDelegate,
      routeInformationParser: AppRouterConfig.router.routeInformationParser,
      routeInformationProvider: AppRouterConfig.router.routeInformationProvider,
      theme: ThemeApp.light,
      /* darkTheme: ThemeApp.dark, 
      localizationsDelegates: LanguageConfig.delegates,
      supportedLocales: LanguageConfig.locales,*/
      themeMode: ThemeMode.light,
    );
  }
}
