import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepController {
  StepController({
    ScrollController? stepController,
    PageController? panelController,
  }) {
    this.stepController = stepController.letNonNull(
      nonNull: (controller) => controller,
      orElse: () => ScrollController(),
    );
    this.panelController = panelController.letNonNull(
      nonNull: (controller) => controller,
      orElse: () => PageController(),
    );
  }

  int currentIndex = 0;
  double shrinkOffset = 0;
  List<StepModel> steps = [];
  Map<int, dynamic> listeners = {};
  late ScrollController stepController;
  late PageController panelController;

  dynamic listener(int index) {
    return listeners[index];
  }

  void addListener({
    required int index,
    required Function(ScrollController) listener,
  }) {
    if (listeners.containsKey(index)) {
      listeners[index] = listener;
    } else {
      listeners.addAll({
        index: listener,
      });
    }
  }
}
