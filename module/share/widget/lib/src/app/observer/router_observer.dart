import 'package:flutter/material.dart';
import 'package:widget/src/app/controller/app_controller.dart';

class RouterObserver extends NavigatorObserver {
  final AppController controller;

  RouterObserver({
    required this.controller,
  });

  @override
  void didPush(Route route, Route? previousRoute) {
    controller.routes.add(
      route.settings.name ?? generateName(route),
    );
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    var count = controller.routes.length - 1;
    for (int index = count; index >= 0; index--) {
      if (route.settings.name == generateName(route)) {
        return;
      }

      controller.routes.removeAt(index);
    }
  }

  String generateName(Route? route) {
    return 'Route => ${route.hashCode}';
  }
}
