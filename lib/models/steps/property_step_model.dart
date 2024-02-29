import 'package:monopoly_flutter/models/property_model.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';

class PropertyStepModel extends StepModel with BuyableStep {
  final PropertyModel property;

  PropertyStepModel({
    required super.rect,
    required super.index,
    required this.property,
    required super.position,
  });
}
