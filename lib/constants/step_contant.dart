import 'package:monopoly_flutter/constants/property_constant.dart';
import 'package:monopoly_flutter/constants/rail_utility_constant.dart';
import 'package:monopoly_flutter/models/steps/buyable_step_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';

final step0 = StepModel(index: 0, isGO: true);
final step10 = StepModel(index: 10, isJail: true);
final step20 = StepModel(index: 20, isParking: true);
final step30 = StepModel(index: 30, isGotoJail: true);

final step4 = TaxStepModel(index: 4, isIncome: true);
final step38 = TaxStepModel(index: 38, isLuxury: true);

final step2 = StepModel(index: 2, isChest: true);
final step17 = StepModel(index: 17, isChest: true);
final step33 = StepModel(index: 33, isChest: true);

final step7 = StepModel(index: 7, isChance: true);
final step22 = StepModel(index: 22, isChance: true);
final step36 = StepModel(index: 36, isChance: true);

final step12 = BuyableStepModel(index: 12, utilityModel: utility0);
final step28 = BuyableStepModel(index: 28, utilityModel: utility1);

final step5 = BuyableStepModel(index: 5, railModel: rail0);
final step15 = BuyableStepModel(index: 15, railModel: rail1);
final step25 = BuyableStepModel(index: 25, railModel: rail2);
final step35 = BuyableStepModel(index: 35, railModel: rail3);

final step1 = BuyableStepModel(index: 1, propertyModel: property0);
final step3 = BuyableStepModel(index: 3, propertyModel: property1);
final step6 = BuyableStepModel(index: 6, propertyModel: property2);
final step8 = BuyableStepModel(index: 8, propertyModel: property3);
final step9 = BuyableStepModel(index: 9, propertyModel: property4);

final step11 = BuyableStepModel(index: 11, propertyModel: property5);
final step13 = BuyableStepModel(index: 13, propertyModel: property6);
final step14 = BuyableStepModel(index: 14, propertyModel: property7);
final step16 = BuyableStepModel(index: 16, propertyModel: property8);
final step18 = BuyableStepModel(index: 18, propertyModel: property9);
final step19 = BuyableStepModel(index: 19, propertyModel: property10);

final step21 = BuyableStepModel(index: 21, propertyModel: property11);
final step23 = BuyableStepModel(index: 23, propertyModel: property12);
final step24 = BuyableStepModel(index: 24, propertyModel: property13);
final step26 = BuyableStepModel(index: 26, propertyModel: property14);
final step27 = BuyableStepModel(index: 27, propertyModel: property15);
final step29 = BuyableStepModel(index: 29, propertyModel: property16);

final step31 = BuyableStepModel(index: 31, propertyModel: property17);
final step32 = BuyableStepModel(index: 32, propertyModel: property18);
final step34 = BuyableStepModel(index: 34, propertyModel: property19);
final step37 = BuyableStepModel(index: 37, propertyModel: property20);
final step39 = BuyableStepModel(index: 39, propertyModel: property21);
