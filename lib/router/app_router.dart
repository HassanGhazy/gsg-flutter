import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();
  static AppRouter route = AppRouter._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  pushPage(Widget widget, var args) {
    navKey.currentState!.push(
      MaterialPageRoute(
          builder: (context) => widget,
          settings: RouteSettings(arguments: args)),
    );
  }

  pushNamed(String routeName) {
    navKey.currentState!.pushNamed(routeName);
  }
}
