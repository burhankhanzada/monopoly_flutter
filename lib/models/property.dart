import 'package:monopoly_flutter/models/player.dart';

class Property {
  final int rent;
  final int price;
  final String name;
  final int houseCount;

  Property({
    required this.name,
    required this.rent,
    required this.price,
    this.houseCount = 0,
    List<Player>? playerList,
  });
}
