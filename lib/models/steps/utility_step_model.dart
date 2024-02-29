import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/icon_step_model.dart';

class UtilityStepModel extends TextIconStepModel with BuyableStep {
  final int price = 150;
  final int mortgage = 75;

  UtilityStepModel({
    required super.rect,
    required super.icon,
    required super.name,
    required super.color,
    required super.index,
    required super.position,
  });

  int rentOne(int diceRoll) {
    return diceRoll * 4;
  }

  int rentTwo(int diceRoll) {
    return diceRoll * 10;
  }
}
