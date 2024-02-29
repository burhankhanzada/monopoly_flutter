import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/icon_step_model.dart';

class ChestStepModel extends TextIconStepModel {
  ChestStepModel({
    required super.rect,
    required super.index,
    required super.position,
  }) : super(
          name: chest,
          icon: Icons.archive,
          color: Colors.brown,
        );
}
