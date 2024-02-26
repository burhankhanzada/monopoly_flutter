import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/object_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/property_group.dart';
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
    return SizedBox.square(
      dimension: boardSize,
      child: LayoutGrid(
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
      ),
    );
  }

  List<NamedAreaGridPlacement> coreners() {
    return [
      const GoBox(stepNumber: 0).inGridArea('0'),
      const JailBox(stepNumber: 10).inGridArea('10'),
      const FreeParkBox(stepNumber: 20).inGridArea('20'),
      const GoToJailBox(stepNumber: 30).inGridArea('30'),
    ];
  }

  List<NamedAreaGridPlacement> chests() {
    return [
      const ChestBox(stepNumber: 2).inGridArea('2'),
      const ChestBox(
        stepNumber: 17,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
      ).inGridArea('17'),
      const ChestBox(
        stepNumber: 33,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('33'),
    ];
  }

  List<NamedAreaGridPlacement> chances() {
    return [
      const ChanceBox(stepNumber: 7).inGridArea('7'),
      const ChanceBox(stepNumber: 22).inGridArea('22'),
      const ChanceBox(
        stepNumber: 36,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('36'),
    ];
  }

  List<NamedAreaGridPlacement> rails() {
    return [
      const RailBox(stepNumber: 5, text: rial1).inGridArea('5'),
      const RailBox(
        text: rial2,
        stepNumber: 15,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
      ).inGridArea('15'),
      const RailBox(
        text: rail3,
        stepNumber: 25,
      ).inGridArea('25'),
      const RailBox(
        text: rail4,
        stepNumber: 35,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('35'),
    ];
  }

  List<NamedAreaGridPlacement> utilities() {
    return [
      const IconBox(
        text: utility1,
        stepNumber: 12,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
        icon: Icon(
          Icons.offline_bolt,
          color: Colors.amber,
          size: 48,
        ),
      ).inGridArea('12'),
      const IconBox(
        text: utility2,
        stepNumber: 28,
        icon: Icon(
          Icons.water_drop,
          color: Colors.blue,
          size: 48,
        ),
      ).inGridArea('28'),
    ];
  }

  List<NamedAreaGridPlacement> taxes() {
    return [
      const IconBox(
        text: tax1,
        stepNumber: 4,
        icon: Icon(
          Icons.paid,
          color: Colors.green,
          size: 48,
        ),
      ).inGridArea('4'),
      const IconBox(
        text: tax2,
        stepNumber: 38,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
        icon: Icon(
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
        stepNumbers: [1, 3],
        position: BoxPosition.bottom,
        propertyGroup: propertySet1,
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [6, 8, 9],
        position: BoxPosition.bottom,
        propertyGroup: propertySet2,
      ),
    ];
  }

  List<NamedAreaGridPlacement> left() {
    return [
      ...propertyGroupBoxesList(
        stepNumbers: [11, 13, 14],
        position: BoxPosition.left,
        propertyGroup: propertySet3,
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [16, 18, 19],
        position: BoxPosition.left,
        propertyGroup: propertySet4,
      ),
    ];
  }

  List<NamedAreaGridPlacement> top() {
    return [
      ...propertyGroupBoxesList(
        stepNumbers: [21, 23, 24],
        position: BoxPosition.top,
        propertyGroup: propertySet5,
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [26, 27, 29],
        position: BoxPosition.top,
        propertyGroup: propertySet6,
      ),
    ];
  }

  List<NamedAreaGridPlacement> right() {
    return [
      ...propertyGroupBoxesList(
        stepNumbers: [31, 32, 34],
        position: BoxPosition.right,
        propertyGroup: propertySet7,
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [37, 39],
        position: BoxPosition.right,
        propertyGroup: propertySet8,
      ),
    ];
  }

  List<NamedAreaGridPlacement> propertyGroupBoxesList({
    required BoxPosition position,
    required List<int> stepNumbers,
    required PropertySetModel propertyGroup,
  }) {
    final list = <NamedAreaGridPlacement>[];

    for (int i = 0; i < stepNumbers.length; i++) {
      final areaName = stepNumbers[i].toString();
      final property = propertyGroup.properties[i];

      final namedAreaGridPlacement = PropertyBox(
        position: position,
        text: property.name,
        price: property.price,
        color: propertyGroup.color,
        stepNumber: stepNumbers[i],
        houseCount: property.houseCount,
      ).inGridArea(areaName);

      list.add(namedAreaGridPlacement);
    }

    return list;
  }
}
