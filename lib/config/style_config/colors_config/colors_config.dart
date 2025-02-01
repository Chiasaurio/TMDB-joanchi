part of '../_lib.dart';

abstract class ColorAppConfig {
  Brightness get brightness;

  MaterialColor get primary;
  MaterialColor get secondary;

  MaterialColor get neutral;

  MaterialColor get success;
  MaterialColor get warning;
  MaterialColor get error;
  MaterialColor get info;

  MaterialColor get background;

  Color get blackAndWhite;
}

class _ColorsApp {
  static ColorAppConfig get getColor => LightColorsConfig();
}

ColorAppConfig get getColor => _ColorsApp.getColor;
