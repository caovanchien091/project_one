import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:project_one/src/screen/home/home_screen.dart';

class AppRoute extends RouteRegister {
  static const homeScreen = '/home';

  @override
  List<String> routes = [
    homeScreen,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
