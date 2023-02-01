import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract class RouteRegister {
  abstract List<String> routes;

  Route? register(RouteSettings settings, AppInjection injection);

  bool contains(RouteSettings settings) {
    return routes.contains(settings.name);
  }
}
