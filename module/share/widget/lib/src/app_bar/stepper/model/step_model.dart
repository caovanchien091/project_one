import 'package:flutter/material.dart';

class StepModel {
  StepModel({
    this.labelStyle,
    required this.label,
    required this.panel,
  });

  final String label;
  final TextStyle? labelStyle;
  final Widget panel;
}
