import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/constants/step_contant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/property_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/center_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/chance_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/chest_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/free_park_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/go_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/goto_jail_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/jail_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/rail_box.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

class GridBoard extends ConsumerStatefulWidget {
  const GridBoard({super.key});

  @override
  ConsumerState<GridBoard> createState() => _VisualBoardState();
}

class _VisualBoardState extends ConsumerState<GridBoard> {
  late final children = <NamedAreaGridPlacement>[
    ...top(),
    ...left(),
    ...right(),
    ...rails(),
    ...taxes(),
    ...bottom(),
    ...chests(),
    ...chances(),
    ...coreners(),
    ...utilities(),
    const CenterBox().inGridArea('c')
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      areas: '''
              20 21 22 23 24 25 26 27 28 29 30
              19 c c c c c c c c c 31
              18 c c c c c c c c c 32
              17 c c c c c c c c c 33
              16 c c c c c c c c c 34
              15 c c c c c c c c c 35
              14 c c c c c c c c c 36
              13 c c c c c c c c c 37
              12 c c c c c c c c c 38
              11 c c c c c c c c c 39
              10 9 8 7 6 5 4 3 2 1 0
              ''',
      rowSizes: [
        cornerSize.px,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        cornerSize.px
      ],
      columnSizes: [
        cornerSize.px,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        1.fr,
        cornerSize.px
      ],
      children: children,
    );
  }

  List<NamedAreaGridPlacement> coreners() {
    return [
      GoBox(step: step0).inGridArea('0'),
      JailBox(step: step10).inGridArea('10'),
      FreeParkBox(step: step20).inGridArea('20'),
      GoToJailBox(step: step30).inGridArea('30'),
    ];
  }

  List<NamedAreaGridPlacement> chests() {
    return [
      ChestBox(step: step2).inGridArea('2'),
      ChestBox(
        step: step17,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
      ).inGridArea('17'),
      ChestBox(
        step: step33,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('33'),
    ];
  }

  List<NamedAreaGridPlacement> chances() {
    return [
      ChanceBox(step: step7).inGridArea('7'),
      ChanceBox(step: step22).inGridArea('22'),
      ChanceBox(
        step: step36,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('36'),
    ];
  }

  List<NamedAreaGridPlacement> rails() {
    return [
      RailBox(step: step5, text: railName1).inGridArea('5'),
      RailBox(
        text: railName2,
        step: step15,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
      ).inGridArea('15'),
      RailBox(
        text: railName4,
        step: step25,
      ).inGridArea('25'),
      RailBox(
        text: railName4,
        step: step35,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('35'),
    ];
  }

  List<NamedAreaGridPlacement> utilities() {
    return [
      IconBox(
        text: utilityName1,
        step: step12,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
        icon: const Icon(
          Icons.offline_bolt,
          color: Colors.amber,
          size: 48,
        ),
      ).inGridArea('12'),
      IconBox(
        text: utilityName2,
        step: step28,
        icon: const Icon(
          Icons.water_drop,
          color: Colors.blue,
          size: 48,
        ),
      ).inGridArea('28'),
    ];
  }

  List<NamedAreaGridPlacement> taxes() {
    return [
      IconBox(
        text: taxName1,
        step: step4,
        icon: const Icon(
          Icons.paid,
          color: Colors.green,
          size: 48,
        ),
      ).inGridArea('4'),
      IconBox(
        text: taxName2,
        step: step38,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
        icon: const Icon(
          Icons.favorite,
          size: 48,
          color: Colors.pink,
        ),
      ).inGridArea('38'),
    ];
  }

  List<NamedAreaGridPlacement> bottom() {
    return [
      ...propertyGroupBoxesList(
        stepModels: [step1, step3],
        position: BoxPosition.bottom,
        propertModels: propertyList0,
      ),
      ...propertyGroupBoxesList(
        stepModels: [step6, step8, step9],
        position: BoxPosition.bottom,
        propertModels: propertyList1,
      ),
    ];
  }

  List<NamedAreaGridPlacement> left() {
    return [
      ...propertyGroupBoxesList(
        stepModels: [step11, step13, step14],
        position: BoxPosition.left,
        propertModels: propertyList2,
      ),
      ...propertyGroupBoxesList(
        stepModels: [step16, step18, step19],
        position: BoxPosition.left,
        propertModels: propertyList3,
      ),
    ];
  }

  List<NamedAreaGridPlacement> top() {
    return [
      ...propertyGroupBoxesList(
        stepModels: [step21, step23, step24],
        position: BoxPosition.top,
        propertModels: propertyList4,
      ),
      ...propertyGroupBoxesList(
        stepModels: [step26, step27, step29],
        position: BoxPosition.top,
        propertModels: propertyList5,
      ),
    ];
  }

  List<NamedAreaGridPlacement> right() {
    return [
      ...propertyGroupBoxesList(
        stepModels: [step31, step32, step34],
        position: BoxPosition.right,
        propertModels: propertyList6,
      ),
      ...propertyGroupBoxesList(
        stepModels: [step37, step39],
        position: BoxPosition.right,
        propertModels: propertyList7,
      ),
    ];
  }

  List<NamedAreaGridPlacement> propertyGroupBoxesList({
    required BoxPosition position,
    required List<StepModel> stepModels,
    required List<PropertyModel> propertModels,
  }) {
    final list = <NamedAreaGridPlacement>[];

    for (int i = 0; i < stepModels.length; i++) {
      final areaName = stepModels[i].index.toString();
      final property = propertModels[i];

      final namedAreaGridPlacement = PropertyBox(
        position: position,
        text: property.name,
        price: property.price,
        color: property.color,
        step: stepModels[i],
        houseCount: property.houseCount,
      ).inGridArea(areaName);

      list.add(namedAreaGridPlacement);
    }

    return list;
  }
}
