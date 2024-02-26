class PropertyModel {
  final int rent;
  final int price;
  final String name;
  final int houseCount;

  PropertyModel({
    required this.name,
    required this.rent,
    required this.price,
    this.houseCount = 0,
  });
}
