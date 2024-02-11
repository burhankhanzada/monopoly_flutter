import 'package:monopoly_flutter/models/player.dart';

class Property {
  final int rent;
  final int price;
  final String name;
  final int houseCount;
  final bool isHotel;
  final List<Player> playerList;

  Property({
    required this.name,
    required this.rent,
    required this.price,
    this.houseCount = 0,
    this.isHotel = false,
    List<Player>? playerList,
  }) : playerList = playerList ?? [];
}
