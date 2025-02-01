part of '../_lib.dart';

class NavigatorHomeModule {
  static void goHome() {
    NavigatorApp.pushReplacement(
      RouterHomeModule.getHome.access,
    );
  }
}
