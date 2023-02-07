import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

typedef StepBuilder = Widget Function(StepStatus);
typedef StepListener = Function(ScrollController);
typedef StepBottomBuilder = Function(int index, int total);
typedef StepRebuild = void Function(void Function());