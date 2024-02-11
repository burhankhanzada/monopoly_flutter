import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constant/list_constant.dart';
import 'package:monopoly_flutter/constant/string_constant.dart';
import 'package:monopoly_flutter/models/player.dart';
import 'package:monopoly_flutter/models/property.dart';
import 'package:monopoly_flutter/models/property_group.dart';

final player1 = Player(name: 'Burhan', color: Colors.red);
final player2 = Player(name: 'Talha', color: Colors.green);
final player3 = Player(name: 'Bilal', color: Colors.blue);
final player4 = Player(name: 'Ali', color: Colors.yellow);
final player5 = Player(name: 'Haad', color: Colors.brown);
final player6 = Player(name: 'Mahad', color: Colors.pink);

final property1 = Property(
  name: propertyName1,
  price: 60,
  rent: 2,
  houseCount: 1,
);

final property2 = Property(
  name: propertyName2,
  price: 60,
  rent: 4,
  houseCount: 2,
);

final property3 = Property(
  name: propertyName3,
  price: 100,
  rent: 6,
  houseCount: 3,
);

final property4 = Property(
  name: propertyName4,
  price: 100,
  rent: 6,
  houseCount: 4,
);

final property5 = Property(
  name: propertyName5,
  price: 120,
  rent: 8,
  isHotel: true,
);

final property6 = Property(
  name: propertyName6,
  price: 140,
  rent: 10,
  playerList: [player1],
);

final property7 = Property(
  name: propertyName7,
  price: 140,
  rent: 10,
  playerList: [player1, player2],
);

final property8 = Property(
  name: propertyName8,
  price: 160,
  rent: 1,
  playerList: [player1, player2, player3],
);

final property9 = Property(
  name: propertyName9,
  price: 180,
  rent: 14,
  playerList: [player1, player2, player3, player4],
);

final property10 = Property(
  name: propertyName10,
  price: 180,
  rent: 14,
  playerList: [player1, player2, player3, player4, player5],
);

final property11 = Property(
  name: propertyName11,
  price: 200,
  rent: 16,
  playerList: [player1, player2, player3, player4, player5, player6],
);

final property12 = Property(
  name: propertyName12,
  price: 220,
  rent: 18,
  playerList: [player1, player2, player3, player4, player5, player6],
);

final property13 = Property(
  name: propertyName13,
  price: 220,
  rent: 18,
);

final property14 = Property(
  name: propertyName14,
  price: 240,
  rent: 20,
);

final property15 = Property(
  name: propertyName15,
  price: 260,
  rent: 22,
);

final property16 = Property(
  name: propertyName16,
  price: 260,
  rent: 22,
);

final property17 = Property(
  name: propertyName17,
  price: 280,
  rent: 24,
);

final property18 = Property(
  name: propertyName18,
  price: 300,
  rent: 26,
);

final property19 = Property(
  name: propertyName19,
  price: 300,
  rent: 26,
);

final property20 = Property(
  name: propertyName20,
  price: 320,
  rent: 28,
);

final property21 = Property(
  name: propertyName21,
  price: 350,
  rent: 35,
);

final property22 = Property(
  name: propertyName22,
  price: 400,
  rent: 50,
);

final propertyGroup1 = PropertyGroup(
  color: Colors.brown,
  properties: propertyList1,
);

final propertyGroup2 = PropertyGroup(
  color: Colors.cyan,
  properties: propertyList2,
);

final propertyGroup3 = PropertyGroup(
  color: Colors.pink,
  properties: propertyList3,
);

final propertyGroup4 = PropertyGroup(
  color: Colors.orange,
  properties: propertyList4,
);

final propertyGroup5 = PropertyGroup(
  color: Colors.red,
  properties: propertyList5,
);

final propertyGroup6 = PropertyGroup(
  color: Colors.yellow,
  properties: propertyList6,
);

final propertyGroup7 = PropertyGroup(
  color: Colors.green,
  properties: propertyList7,
);

final propertyGroup8 = PropertyGroup(
  color: Colors.blue,
  properties: propertyList8,
);
