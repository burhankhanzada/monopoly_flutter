import 'package:monopoly_flutter/models/steps/step_model.dart';

class TaxStepModel extends StepModel {

  final bool isIncome;
  final bool isLuxury;

  TaxStepModel({
    required super.index,
    this.isIncome = false,
    this.isLuxury = false,
  });
}
