import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/property_constant.dart';
import 'package:monopoly_flutter/constants/rect_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/chance_step_model.dart';
import 'package:monopoly_flutter/models/steps/chest_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';

final step0 = StepModel(
  index: 0,
  rect: stepRect0,
  position: BoxPosition.corner,
);

final step10 = StepModel(
  index: 10,
  rect: stepRect10,
  position: BoxPosition.corner,
);

final step20 = StepModel(
  index: 20,
  rect: stepRect20,
  position: BoxPosition.corner,
);

final step30 = StepModel(
  index: 30,
  rect: stepRect30,
  position: BoxPosition.corner,
);

final step4 = TaxStepModel(
  index: 4,
  name: taxName2,
  rect: stepRect4,
  icon: Icons.paid,
  color: Colors.green,
  position: BoxPosition.bottom,
);

final step38 = TaxStepModel(
  index: 38,
  name: taxName2,
  rect: stepRect38,
  icon: Icons.favorite,
  color: Colors.pink,
  position: BoxPosition.right,
);

final step12 = UtilityStepModel(
  index: 12,
  rect: stepRect12,
  name: utilityName1,
  color: Colors.amber,
  icon: Icons.offline_bolt,
  position: BoxPosition.left,
);

final step28 = UtilityStepModel(
  index: 28,
  rect: stepRect28,
  name: utilityName2,
  color: Colors.blue,
  icon: Icons.water_drop,
  position: BoxPosition.top,
);

final step2 = ChestStepModel(
  index: 2,
  rect: stepRect2,
  position: BoxPosition.bottom,
);

final step17 = ChestStepModel(
  index: 17,
  rect: stepRect17,
  position: BoxPosition.left,
);

final step33 = ChestStepModel(
  index: 33,
  rect: stepRect33,
  position: BoxPosition.right,
);

final step7 = ChanceStepModel(
  index: 7,
  rect: stepRect7,
  position: BoxPosition.bottom,
);

final step22 = ChanceStepModel(
  index: 22,
  rect: stepRect22,
  position: BoxPosition.top,
);

final step36 = ChanceStepModel(
  index: 33,
  rect: stepRect36,
  position: BoxPosition.right,
);

final step5 = RailStepModel(
  index: 5,
  name: railName1,
  rect: stepRect5,
  position: BoxPosition.bottom,
);

final step15 = RailStepModel(
  index: 15,
  name: railName2,
  rect: stepRect15,
  position: BoxPosition.left,
);

final step25 = RailStepModel(
  index: 25,
  name: railName3,
  rect: stepRect25,
  position: BoxPosition.top,
);

final step35 = RailStepModel(
  index: 35,
  name: railName4,
  rect: stepRect35,
  position: BoxPosition.right,
);

final step1 = PropertyStepModel(
  index: 1,
  rect: stepRect1,
  property: property0,
  position: BoxPosition.bottom,
);

final step3 = PropertyStepModel(
  index: 3,
  rect: stepRect3,
  property: property1,
  position: BoxPosition.bottom,
);

final step6 = PropertyStepModel(
  index: 6,
  rect: stepRect6,
  property: property2,
  position: BoxPosition.bottom,
);

final step8 = PropertyStepModel(
  index: 8,
  rect: stepRect8,
  property: property3,
  position: BoxPosition.bottom,
);

final step9 = PropertyStepModel(
  index: 9,
  rect: stepRect9,
  property: property4,
  position: BoxPosition.bottom,
);

final step11 = PropertyStepModel(
  index: 11,
  rect: stepRect11,
  property: property5,
  position: BoxPosition.left,
);

final step13 = PropertyStepModel(
  index: 13,
  rect: stepRect13,
  property: property6,
  position: BoxPosition.left,
);

final step14 = PropertyStepModel(
  index: 14,
  rect:stepRect14 ,
  property: property7,
  position: BoxPosition.left,
);

final step16 = PropertyStepModel(
  index: 16,
  rect: stepRect16,
  property: property8,
  position: BoxPosition.left,
);

final step18 = PropertyStepModel(
  index: 18,
  rect: stepRect18,
  property: property9,
  position: BoxPosition.left,
);

final step19 = PropertyStepModel(
  index: 19,
  rect: stepRect19,
  property: property10,
  position: BoxPosition.left,
);

final step21 = PropertyStepModel(
  index: 21,
  rect: stepRect21,
  property: property11,
  position: BoxPosition.top,
);

final step23 = PropertyStepModel(
  index: 23,
  rect: stepRect23,
  property: property12,
  position: BoxPosition.top,
);

final step24 = PropertyStepModel(
  index: 24,
  rect: stepRect24,
  property: property13,
  position: BoxPosition.top,
);

final step26 = PropertyStepModel(
  index: 26,
  rect: stepRect26,
  property: property14,
  position: BoxPosition.top,
);

final step27 = PropertyStepModel(
  index: 27,
  rect: stepRect27,
  property: property15,
  position: BoxPosition.top,
);

final step29 = PropertyStepModel(
  index: 29,
  rect: stepRect29,
  property: property16,
  position: BoxPosition.top,
);

final step31 = PropertyStepModel(
  index: 31,
  rect: stepRect31,
  property: property17,
  position: BoxPosition.right,
);

final step32 = PropertyStepModel(
  index: 32,
  rect: stepRect32,
  property: property18,
  position: BoxPosition.right,
);

final step34 = PropertyStepModel(
  index: 34,
  rect: stepRect34,
  property: property19,
  position: BoxPosition.right,
);

final step37 = PropertyStepModel(
  index: 37,
  rect: stepRect37,
  property: property20,
  position: BoxPosition.right,
);

final step39 = PropertyStepModel(
  index: 39,
  rect: stepRect39,
  property: property21,
  position: BoxPosition.right,
);
