import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/icon_step_model.dart';

class ChanceStepModel extends TextIconStepModel {
  ChanceStepModel({
    required super.rect,
    required super.index,
    required super.position,
  }) : super(
          name: chance,
          color: Colors.purple,
          icon: Icons.question_mark,
        );
}
