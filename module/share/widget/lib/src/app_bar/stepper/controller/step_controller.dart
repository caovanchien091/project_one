import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepController {
  StepController({
    required this.stepController,
    required this.panelController,
  });

  int currentIndex = 0;
  double shrinkOffset = 0;
  List<StepModel> steps = [];
  final PageController panelController;
  final ScrollController stepController;

  bool isLast(int index) {
    return (steps.length - 1) == index;
  }

  bool isFirst(int index) {
    return 0 == index;
  }

  void goToPage(int index, [bool noAnimate = false]) {
    if (index <= 0 || index <= (steps.length - 1)) {
      currentIndex = index;
      _animatePageSwitch(currentIndex, noAnimate);
    }
  }

  void goToNextPage() {
    if (currentIndex < (steps.length - 1)) {
      currentIndex++;
      _animatePageSwitch(currentIndex);
    }
  }

  void goToPreviousPage() {
    if (currentIndex > 0) {
      currentIndex--;
      _animatePageSwitch(currentIndex);
    }
  }

  void listenerPageSwitch({
    required int index,
    required StepRebuild state,
  }) {
    var listener = steps[index].listener;
    if (listener != null) {
      listener(stepController);
      state(() {
        currentIndex = index;
      });
    }
  }

  void _animatePageSwitch(
    int index, [
    bool noAnimate = false,
  ]) {
    if (noAnimate) {
      panelController.jumpToPage(index);
    } else {
      panelController.animateToPage(
        index,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    }
  }
}
