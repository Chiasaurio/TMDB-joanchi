part of '../_lib.dart';

class ThemeApp {
  static final ThemeData light = ThemeConfig(LightColorsConfig()).themeApp;
}

class ThemeConfig {
  final ColorAppConfig colors;

  ThemeConfig(this.colors);

  ThemeData get themeApp => ThemeData(
        fontFamily: 'Roboto',
        colorScheme: _colorScheme,
        useMaterial3: true,
        dividerColor: colors.info[100],
        dividerTheme: DividerThemeData(
          color: colors.info[100],
          thickness: 1.0,
        ),
        scaffoldBackgroundColor: getColor.background[50],
      );

  ColorScheme get _colorScheme => ColorScheme.fromSeed(
        brightness: colors.brightness,
        seedColor: colors.primary,
        primary: colors.primary,
        secondary: colors.secondary,
        error: colors.error,
      );
}
