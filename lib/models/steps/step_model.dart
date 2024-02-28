class StepModel {
  int index;
  bool isGO;
  bool isJail;
  bool isGotoJail;
  bool isParking;
  bool isChest;
  bool isChance;

  StepModel({
    required this.index,
    this.isGO = false,
    this.isJail = false,
    this.isGotoJail = false,
    this.isParking = false,
    this.isChest = false,
    this.isChance = false,
  });
}
