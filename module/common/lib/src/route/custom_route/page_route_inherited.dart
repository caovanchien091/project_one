import 'package:common/common.dart';
import 'package:flutter/material.dart';

class PageRouteInherited extends InheritedWidget {
  final PageRouteModel model;

  const PageRouteInherited({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(oldWidget) {
    return true;
  }
}
