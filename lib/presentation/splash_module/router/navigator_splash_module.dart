part of '../_lib.dart';

class NavigatorSplashModule {
  static void goSplash() {
    NavigatorApp.go(RouterSplashModule.getSplash.access);
  }
}
