import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/player.dart';
import 'package:monopoly_flutter/models/property.dart';
import 'package:monopoly_flutter/models/property_group.dart';
import 'package:monopoly_flutter/models/token.dart';

final token1 = TokenModel(Colors.red);
final token2 = TokenModel(Colors.green);
final token3 = TokenModel(Colors.blue);
final token4 = TokenModel(Colors.yellow);
final token5 = TokenModel(Colors.brown);
final token6 = TokenModel(Colors.purple);

final player1 = PlayerModel(id: 0, name: 'Burhan', token: token1);
final player2 = PlayerModel(id: 1, name: 'Bilal', token: token2);
final player3 = PlayerModel(id: 2, name: 'Talha', token: token3);
final player4 = PlayerModel(id: 3, name: 'Adbdullah', token: token4);
final player5 = PlayerModel(id: 4, name: 'Haad', token: token5);
final player6 = PlayerModel(id: 5, name: 'Mahad', token: token6);

final property1 = PropertyModel(
  rent: 2,
  price: 60,
  name: propertyName1,
);

final property2 = PropertyModel(
  rent: 4,
  price: 60,
  name: propertyName2,
);

final property3 = PropertyModel(
  rent: 6,
  price: 100,
  name: propertyName3,
);

final property4 = PropertyModel(
  rent: 6,
  price: 100,
  name: propertyName4,
);

final property5 = PropertyModel(
  rent: 8,
  price: 120,
  name: propertyName5,
);

final property6 = PropertyModel(
  rent: 10,
  price: 140,
  name: propertyName6,
);

final property7 = PropertyModel(
  rent: 10,
  price: 140,
  name: propertyName7,
);

final property8 = PropertyModel(
  rent: 1,
  price: 160,
  name: propertyName8,
);

final property9 = PropertyModel(
  rent: 14,
  price: 180,
  name: propertyName9,
);

final property10 = PropertyModel(
  rent: 14,
  price: 180,
  name: propertyName10,
);

final property11 = PropertyModel(
  rent: 16,
  price: 200,
  name: propertyName11,
);

final property12 = PropertyModel(
  rent: 18,
  price: 220,
  name: propertyName12,
);

final property13 = PropertyModel(
  rent: 18,
  price: 220,
  name: propertyName13,
);

final property14 = PropertyModel(
  rent: 20,
  price: 240,
  name: propertyName14,
);

final property15 = PropertyModel(
  rent: 22,
  price: 260,
  name: propertyName15,
);

final property16 = PropertyModel(
  rent: 22,
  price: 260,
  name: propertyName16,
);

final property17 = PropertyModel(
  rent: 24,
  price: 280,
  name: propertyName17,
);

final property18 = PropertyModel(
  rent: 26,
  price: 300,
  name: propertyName18,
);

final property19 = PropertyModel(
  rent: 26,
  price: 300,
  name: propertyName19,
);

final property20 = PropertyModel(
  rent: 28,
  price: 320,
  name: propertyName20,
);

final property21 = PropertyModel(
  rent: 35,
  price: 350,
  name: propertyName21,
);

final property22 = PropertyModel(
  rent: 50,
  price: 400,
  name: propertyName22,
);

final propertySet1 = PropertySetModel(
  id: 0,
  color: Colors.purple,
  properties: propertyList1,
);

final propertySet2 = PropertySetModel(
  id: 1,
  color: Colors.orange,
  properties: propertyList2,
);

final propertySet3 = PropertySetModel(
  id: 2,
  color: Colors.pink,
  properties: propertyList3,
);

final propertySet4 = PropertySetModel(
  id: 3,
  color: Colors.cyan,
  properties: propertyList4,
);

final propertySet5 = PropertySetModel(
  id: 4,
  color: Colors.red,
  properties: propertyList5,
);

final propertySet6 = PropertySetModel(
  id: 5,
  color: Colors.yellow,
  properties: propertyList6,
);

final propertySet7 = PropertySetModel(
  id: 6,
  color: Colors.green,
  properties: propertyList7,
);

final propertySet8 = PropertySetModel(
  id: 7,
  color: Colors.blue,
  properties: propertyList8,
);
