import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepInherited extends InheritedWidget {
  const StepInherited({
    Key? key,
    required Widget child,
    required this.controller,
    this.iconBuilder,
    this.titleBuilder,
    this.lineBuilder,
    this.icon,
    required this.backgroundColor,
    required this.completeColor,
    required this.selectedColor,
    required this.remainColor,
    required this.labelStyle,
    required this.lineWidth,
    required this.lineThickness,
    required this.iconSize,
    required this.iconPadding,
    required this.space,
    required this.appBar,
  }) : super(key: key, child: child);

  final Widget? icon;
  final StepController controller;
  final Color completeColor;
  final Color selectedColor;
  final Color remainColor;
  final Color backgroundColor;
  final TextStyle labelStyle;
  final double lineWidth;
  final double lineThickness;
  final double iconSize;
  final double iconPadding;
  final double space;
  final Widget appBar;
  final StepBuilder? iconBuilder;
  final StepBuilder? titleBuilder;
  final StepBuilder? lineBuilder;

  static StepInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StepInherited>() as StepInherited;
  }

  @override
  bool updateShouldNotify(oldWidget) {
    return true;
  }
}
