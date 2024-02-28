import 'dart:ui';

class PropertyModel {
  final int rent;
  final int price;
  final int rentSet;
  final Color color;
  final String name;
  final int mortgage;
  final int rentHotel;
  final int hosueCost;
  final int rentOneHouse;
  final int rentTwoHouse;
  final int rentFourHouse;
  final int rentThreeHouse;
  final int houseCount = 0;

  PropertyModel({
    required this.name,
    required this.rent,
    required this.color,
    required this.price,
    required this.rentSet,
    required this.mortgage,
    required this.hosueCost,
    required this.rentOneHouse,
    required this.rentTwoHouse,
    required this.rentThreeHouse,
    required this.rentFourHouse,
    required this.rentHotel,
  });
}
