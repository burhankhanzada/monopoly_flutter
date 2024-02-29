import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/icon_step_model.dart';

class RailStepModel extends TextIconStepModel with BuyableStep {
  final int price = 200;
  final int rentOne = 25;
  final int rentTwo = 50;
  final int rentTree = 100;
  final int rentFour = 200;
  final int mortgage = 100;

  RailStepModel({
    required super.rect,
    required super.name,
    required super.index,
    required super.position,
  }) : super(
          icon: Icons.train,
          color: Colors.teal,
        );
}
