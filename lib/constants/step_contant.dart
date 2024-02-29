import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/property_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/chance_step_model.dart';
import 'package:monopoly_flutter/models/steps/chest_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/utils/offset_util.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

final step0 = StepModel(
  index: 0,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    bottomOffset - cornerSize,
    cornerSize,
    cornerSize,
  ),
);

final step10 = StepModel(
  index: 10,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    leftOffset,
    bottomOffset - cornerSize,
    cornerSize,
    cornerSize,
  ),
);

final step20 = StepModel(
  index: 20,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    leftOffset,
    topOffset,
    cornerSize,
    cornerSize,
  ),
);

final step30 = StepModel(
  index: 30,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    topOffset,
    cornerSize,
    cornerSize,
  ),
);

final step4 = TaxStepModel(
  index: 4,
  name: taxName2,
  icon: Icons.paid,
  color: Colors.green,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 5 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step38 = TaxStepModel(
  index: 38,
  name: taxName2,
  icon: Icons.favorite,
  color: Colors.pink,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 7 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step12 = UtilityStepModel(
  index: 12,
  name: utilityName1,
  color: Colors.amber,
  icon: Icons.offline_bolt,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 7 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step28 = UtilityStepModel(
  index: 28,
  name: utilityName2,
  color: Colors.blue,
  icon: Icons.water_drop,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 7 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step2 = ChestStepModel(
  index: 2,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 7 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step17 = ChestStepModel(
  index: 17,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 2 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step33 = ChestStepModel(
  index: 33,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 2 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step7 = ChanceStepModel(
  index: 7,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 2 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step22 = ChanceStepModel(
  index: 22,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 1 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step36 = ChanceStepModel(
  index: 33,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 5 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step5 = RailStepModel(
  index: 5,
  name: railName1,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 4 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step15 = RailStepModel(
  index: 15,
  name: railName2,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 4 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step25 = RailStepModel(
  index: 25,
  name: railName3,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 4 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step35 = RailStepModel(
  index: 35,
  name: railName4,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 4 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step1 = PropertyStepModel(
  index: 1,
  property: property0,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 8 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step3 = PropertyStepModel(
  index: 3,
  property: property1,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 6 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step6 = PropertyStepModel(
  index: 6,
  property: property2,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 3 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step8 = PropertyStepModel(
  index: 8,
  property: property3,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 1 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step9 = PropertyStepModel(
  index: 9,
  property: property4,
  position: BoxPosition.bottom,
  rect: Rect.fromLTWH(
    cornerSize + 0 * nonCornerSize,
    bottomOffset - cornerSize,
    nonCornerSize,
    cornerSize,
  ),
);

final step11 = PropertyStepModel(
  index: 11,
  property: property5,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 8 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step13 = PropertyStepModel(
  index: 13,
  property: property6,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 6 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step14 = PropertyStepModel(
  index: 14,
  property: property7,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 5 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step16 = PropertyStepModel(
  index: 16,
  property: property8,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 3 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step18 = PropertyStepModel(
  index: 18,
  property: property9,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 1 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step19 = PropertyStepModel(
  index: 19,
  property: property10,
  position: BoxPosition.left,
  rect: Rect.fromLTWH(
    leftOffset,
    cornerSize + 0 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step21 = PropertyStepModel(
  index: 21,
  property: property11,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 0 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step23 = PropertyStepModel(
  index: 23,
  property: property12,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 2 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step24 = PropertyStepModel(
  index: 24,
  property: property13,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 3 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step26 = PropertyStepModel(
  index: 26,
  property: property14,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 5 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step27 = PropertyStepModel(
  index: 27,
  property: property15,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 6 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step29 = PropertyStepModel(
  index: 29,
  property: property16,
  position: BoxPosition.top,
  rect: Rect.fromLTWH(
    cornerSize + 8 * nonCornerSize,
    topOffset,
    nonCornerSize,
    cornerSize,
  ),
);

final step31 = PropertyStepModel(
  index: 31,
  property: property17,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 0 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step32 = PropertyStepModel(
  index: 32,
  property: property18,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 1 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step34 = PropertyStepModel(
  index: 34,
  property: property19,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 3 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step37 = PropertyStepModel(
  index: 37,
  property: property20,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 6 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);

final step39 = PropertyStepModel(
  index: 39,
  property: property21,
  position: BoxPosition.right,
  rect: Rect.fromLTWH(
    rightOffset - cornerSize,
    cornerSize + 8 * nonCornerSize,
    cornerSize,
    nonCornerSize,
  ),
);
