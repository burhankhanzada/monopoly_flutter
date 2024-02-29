import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';

class TextIconStepModel extends StepModel {
  final Color color;
  final String name;
  final IconData icon;

  TextIconStepModel({
    required this.name,
    required this.icon,
    required this.color,
    required super.rect,
    required super.index,
    required super.position,
  });
}
