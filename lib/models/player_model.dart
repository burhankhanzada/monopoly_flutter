import 'package:monopoly_flutter/models/token_model.dart';

class PlayerModel {
  int id;
  String name;
  TokenModel token;

  PlayerModel({
    required this.id,
    required this.name,
    required this.token,
  });
}
