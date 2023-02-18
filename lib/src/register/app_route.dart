import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:project_one/src/screen/auth/sing_in_screen.dart';
import 'package:project_one/src/screen/auth/sing_up_screen.dart';

class AppRoute extends RouteRegister {
  static const authSingIn = '/authSignIn';
  static const authSingUp = '/authSignUp';

  @override
  List<String> routes = [
    AppRoute.authSingIn,
    AppRoute.authSingUp,
  ];

  @override
  Route? register(settings, injection) {
    switch (settings.name) {
      case authSingIn:
      case authSingUp:
    }
  }
}
