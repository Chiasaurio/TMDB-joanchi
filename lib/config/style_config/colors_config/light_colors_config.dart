part of '../_lib.dart';

class LightColorsConfig extends ColorAppConfig {
  @override
  Brightness get brightness => Brightness.light;

  @override
  MaterialColor get primary =>
      const MaterialColor(_primaryPrimaryValue, <int, Color>{
        50: Color(0xFFF6F8FE),
        100: Color(0xFFE6EAFB),
        200: Color(0xFFC7D0F6),
        300: Color(0xFF6F85E7),
        400: Color(0xFF3957DE),
        500: Color(_primaryPrimaryValue),
        600: Color(0xFF2A47D8),
        700: Color(0xFF233DD3),
        800: Color(0xFF1D35CE),
        900: Color(0xFF1225C5),
      });

  static const int _primaryPrimaryValue = 0xFF2F4EDC;

  @override
  MaterialColor get secondary =>
      const MaterialColor(_secondaryPrimaryValue, <int, Color>{
        50: Color(0xFFF3F4FF),
        100: Color(0xFFE2E4FF),
        200: Color(0xFFCFD3FF),
        300: Color(0xFFBBC1FF),
        400: Color(0xFFADB3FF),
        500: Color(_secondaryPrimaryValue),
        600: Color(0xFF969EFF),
        700: Color(0xFF8C95FF),
        800: Color(0xFF828BFF),
        900: Color(0xFF707BFF),
      });

  static const int _secondaryPrimaryValue = 0xFF9EA6FF;

  @override
  MaterialColor get neutral =>
      const MaterialColor(_neutralPrimaryValue, <int, Color>{
        50: Color(0xFFFAFAFA),
        100: Color(0xFFE7E7E7),
        200: Color(0xFFC4C4C4),
        300: Color(0xFF9D9D9D),
        400: Color(0xFF757576),
        500: Color(_neutralPrimaryValue),
        600: Color(0xFF3A3A3B),
        700: Color(0xFF343435),
        800: Color(0xFF2C2C2D),
        900: Color(0xFF181819),
      });

  static const int _neutralPrimaryValue = 0xFF585858;

  @override
  MaterialColor get success =>
      const MaterialColor(_successPrimaryValue, <int, Color>{
        50: Color(0xFFE2F2E9),
        100: Color(0xFFB7DEC8),
        200: Color(0xFF87C9A3),
        300: Color(0xFF56B37E),
        400: Color(0xFF32A262),
        500: Color(_successPrimaryValue),
        600: Color(0xFF0C8A3F),
        700: Color(0xFF0A7F37),
        800: Color(0xFF08752F),
        900: Color(0xFF046320),
      });

  static const int _successPrimaryValue = 0xFF0E9246;

  @override
  MaterialColor get error =>
      const MaterialColor(_errorPrimaryValue, <int, Color>{
        50: Color(0xFFF9E4E4),
        100: Color(0xFFF5CFCD),
        200: Color(0xFFF0B3B1),
        300: Color(0xFFE7726C),
        400: Color(0xFFD6433E),
        500: Color(_errorPrimaryValue),
        600: Color(0xFFCA1E19),
        700: Color(0xFFC31914),
        800: Color(0xFFBD1411),
        900: Color(0xFFB20C09),
      });

  static const int _errorPrimaryValue = 0xFFCF221C;

  @override
  MaterialColor get warning =>
      const MaterialColor(_warningPrimaryValue, <int, Color>{
        50: Color(0xFFFFF5EC),
        100: Color(0xFFFFEAD7),
        200: Color(0xFFFCC495),
        300: Color(0xFFFAA762),
        400: Color(0xFFF49648),
        500: Color(_warningPrimaryValue),
        600: Color(0xFFF07C24),
        700: Color(0xFFEE711E),
        800: Color(0xFFEC6718),
        900: Color(0xFFE8540F),
      });

  static const int _warningPrimaryValue = 0xFFF28428;

  @override
  MaterialColor get info => const MaterialColor(_infoPrimaryValue, <int, Color>{
        50: Color(0xFFEBF4FF),
        100: Color(0xFFD7EBFF),
        200: Color(0xFFB6DAFE),
        300: Color(0xFF85C2FD),
        400: Color(0xFF54AAFC),
        500: Color(_infoPrimaryValue),
        600: Color(0xFF0B85FB),
        700: Color(0xFF0B85FB),
        800: Color(0xFF0B85FB),
        900: Color(0xFF0B85FB),
      });

  static const int _infoPrimaryValue = 0xFF3097FC;

  @override
  Color get blackAndWhite => Colors.white;

  @override
  MaterialColor get background =>
      const MaterialColor(_backgroundPrimaryValue, <int, Color>{
        50: Color(0xFFFDFDFD),
        100: Color(0xFFFAFAFA),
        200: Color(0xFFF7F7F7),
        300: Color(0xFFF3F3F3),
        400: Color(0xFFF1F1F1),
        500: Color(_backgroundPrimaryValue),
        600: Color(0xFFECECEC),
        700: Color(0xFFE9E9E9),
        800: Color(0xFFE7E7E7),
        900: Color(0xFFE2E2E2),
      });

  static const int _backgroundPrimaryValue = 0xFFEEEEEE;
}
