import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepInherited extends InheritedWidget {
  const StepInherited({
    Key? key,
    required Widget child,
    required this.controller,
  }) : super(key: key, child: child);

  final StepController controller;

  static StepInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StepInherited>()!;
  }

  @override
  bool updateShouldNotify(oldWidget) {
    return true;
  }
}
