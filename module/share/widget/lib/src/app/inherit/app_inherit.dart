import 'package:flutter/material.dart';
import 'package:widget/src/app/controller/app_controller.dart';

class AppInherited extends InheritedWidget {
  final AppController controller;

  const AppInherited({
    Key? key,
    required this.controller,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(AppInherited oldWidget) {
    return true;
  }
}
