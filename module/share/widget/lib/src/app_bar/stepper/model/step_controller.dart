import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class StepController {
  StepController({
    ScrollController? stepController,
    ScrollController? panelController,
  }) {
    this.stepController = stepController ?? ScrollController();
    this.panelController = panelController ?? ScrollController();
  }

  late int currentIndex = 0;
  late List<StepModel> steps;
  late ScrollController stepController;
  late ScrollController panelController;

  int get totalIndex => steps.length;
}
