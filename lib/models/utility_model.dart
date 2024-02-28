class UtilityModel {
  final String name;
  final int mortgage = 75;
  final int price = 150;
  final bool isWater;
  final bool isElectricity;

  UtilityModel({
    required this.name,
    this.isWater = false,
    this.isElectricity = false,
  });

  int rentOne(int diceRoll) {
    return diceRoll * 4;
  }

  int rentTwo(int diceRoll) {
    return diceRoll * 10;
  }
}
