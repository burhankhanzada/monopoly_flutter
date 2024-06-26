import 'package:monopoly_flutter/models/property_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/models/token_model.dart';

class PlayerModel {
  final int id;
  final String name;
  final TokenModel token;
  int money = 1000;
  final List<PropertyModel> properties = [];
  final List<RailStepModel> railrolads = [];
  final List<UtilityStepModel> utlities = [];

  PlayerModel({
    required this.id,
    required this.name,
    required this.token,
  });
}
