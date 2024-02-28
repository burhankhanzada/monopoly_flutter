import 'package:monopoly_flutter/models/property_model.dart';
import 'package:monopoly_flutter/models/rail_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/utility_model.dart';

class BuyableStepModel extends StepModel {

  final bool isPurchased = false;
  final RailModel? railModel;
  final UtilityModel? utilityModel;
  final PropertyModel? propertyModel;

  BuyableStepModel({
    required super.index,
    this.railModel,
    this.utilityModel,
    this.propertyModel,
  });
}
