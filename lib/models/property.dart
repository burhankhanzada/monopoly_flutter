class Property {
  final int rent;
  final int price;
  final String name;
  final int houseCount;
  final bool isHotel;

  Property({
    required this.name,
    required this.rent,
    required this.price,
    this.houseCount = 0,
    this.isHotel = false,
  });
}
