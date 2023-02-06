import 'package:flutter/cupertino.dart';
import 'package:untitled1/step_bar/model/step_model.dart';

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
