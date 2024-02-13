import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:monopoly_flutter/constant/enum_constant.dart';
import 'package:monopoly_flutter/constant/object_constant.dart';
import 'package:monopoly_flutter/constant/string_constant.dart';
import 'package:monopoly_flutter/models/property_group.dart';
import 'package:monopoly_flutter/ui/board/boxes/center_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/chance_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/chest_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/free_park_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/go_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/goto_jail_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/jail_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/property_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/rail_box.dart';

class VisualBoard extends StatelessWidget {
  const VisualBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 1000,
      color: Colors.black,
      padding: const EdgeInsets.all(2),
      child: LayoutGrid(
        rowGap: 2,
        columnGap: 2,
        areas: '''
              fp p12 ch2 p13 p14 rr3 p15 p16 u2 p17 gtj
              p11 cen cen cen cen cen cen cen cen cen p18
              p10 cen cen cen cen cen cen cen cen cen p19
              cc2 cen cen cen cen cen cen cen cen cen cc3
              p9 cen cen cen cen cen cen cen cen cen p20
              rr2 cen cen cen cen cen cen cen cen cen rr4
              p8 cen cen cen cen cen cen cen cen cen ch3
              p7 cen cen cen cen cen cen cen cen cen p21
              u1 cen cen cen cen cen cen cen cen cen t2
              p6 cen cen cen cen cen cen cen cen cen p22
              jail p5 p4 ch1 p3 rr1 t1 p2 cc1 p1 go
              ''',
        rowSizes: [
          150.px,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          150.px
        ],
        columnSizes: [
          150.px,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          1.fr,
          150.px
        ],
        children: [
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
          const CenterBox().inGridArea('cen')
        ],
      ),
    );
  }

  List<Widget> coreners() {
    return [
      const GoBox(stepNumber: 0).inGridArea('go'),
      const JailBox(stepNumber: 10).inGridArea('jail'),
      const FreeParkBox(stepNumber: 20).inGridArea('fp'),
      const GoToJailBox(stepNumber: 30).inGridArea('gtj'),
    ];
  }

  List<Widget> chests() {
    return [
      const ChestBox(
        stepNumber: 2,
      ).inGridArea('cc1'),
      const ChestBox(
        stepNumber: 17,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
      ).inGridArea('cc2'),
      const ChestBox(
        stepNumber: 33,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('cc3'),
    ];
  }

  List<Widget> chances() {
    return [
      const ChanceBox(
        stepNumber: 7,
      ).inGridArea('ch1'),
      const ChanceBox(
        stepNumber: 22,
      ).inGridArea('ch2'),
      const ChanceBox(
        stepNumber: 36,
          position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('ch3'),
    ];
  }

  List<Widget> rails() {
    return [
      const RailBox(
        stepNumber: 5,
        text: rial1,
      ).inGridArea('rr1'),
      const RailBox(
        stepNumber: 15,
        text: rial2,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
      ).inGridArea('rr2'),
      const RailBox(
        stepNumber: 25,
        text: rail3,
      ).inGridArea('rr3'),
      const RailBox(
        stepNumber: 35,
        text: rail4,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
      ).inGridArea('rr4'),
    ];
  }

  List<Widget> utilities() {
    return [
      const IconBox(
        stepNumber: 12,
        text: utility1,
        position: BoxPosition.left,
        aligment: BoxAligment.horizontal,
        icon: Icon(
          Icons.offline_bolt,
          color: Colors.amber,
          size: 48,
        ),
      ).inGridArea('u1'),
      const IconBox(
        stepNumber: 28,
        text: utility2,
        icon: Icon(
          Icons.water_drop,
          color: Colors.blue,
          size: 48,
        ),
      ).inGridArea('u2'),
    ];
  }

  List<Widget> taxes() {
    return [
      const IconBox(
        stepNumber: 4,
        text: tax1,
        icon: Icon(
          Icons.paid,
          color: Colors.green,
          size: 48,
        ),
      ).inGridArea('t1'),
      const IconBox(
        stepNumber: 38,
        text: tax2,
        position: BoxPosition.right,
        aligment: BoxAligment.horizontal,
        icon: Icon(
          Icons.favorite,
          size: 48,
          color: Colors.pink,
        ),
      ).inGridArea('t2'),
    ];
  }

  List<Widget> bottom() {
    return [
      ...propertyGroupBoxesList(
        stepNumbers: [1, 3],
        position: BoxPosition.bottom,
        propertyGroup: propertyGroup1,
        gridLocations: ['p1', 'p2'],
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [6, 8, 9],
        position: BoxPosition.bottom,
        propertyGroup: propertyGroup2,
        gridLocations: ['p3', 'p4', 'p5'],
      ),
    ];
  }

  List<Widget> left() {
    return [
      ...propertyGroupBoxesList(
        stepNumbers: [11, 13, 14],
        position: BoxPosition.left,
        propertyGroup: propertyGroup3,
        gridLocations: ['p6', 'p7', 'p8'],
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [16, 18, 19],
        position: BoxPosition.left,
        propertyGroup: propertyGroup4,
        gridLocations: ['p9', 'p10', 'p11'],
      ),
    ];
  }

  List<Widget> top() {
    return [
      ...propertyGroupBoxesList(
        stepNumbers: [21, 23, 24],
        position: BoxPosition.top,
        propertyGroup: propertyGroup5,
        gridLocations: ['p12', 'p13', 'p14'],
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [26, 27, 29],
        position: BoxPosition.top,
        propertyGroup: propertyGroup6,
        gridLocations: ['p15', 'p16', 'p17'],
      ),
    ];
  }

  List<Widget> right() {
    return [
      ...propertyGroupBoxesList(
        stepNumbers: [31, 32, 34],
        position: BoxPosition.right,
        propertyGroup: propertyGroup7,
        gridLocations: ['p18', 'p19', 'p20'],
      ),
      ...propertyGroupBoxesList(
        stepNumbers: [37, 39],
        position: BoxPosition.right,
        propertyGroup: propertyGroup8,
        gridLocations: ['p21', 'p22'],
      ),
    ];
  }

  propertyGroupBoxesList({
    required BoxPosition position,
    required PropertyGroup propertyGroup,
    required List<String> gridLocations,
    required List<int> stepNumbers,
  }) {
    final list = [];

    for (int i = 0; i < gridLocations.length; i++) {
      final location = gridLocations[i];
      final property = propertyGroup.properties[i];

      final namedAreaGridPlacement = PropertyBox(
        position: position,
        text: property.name,
        price: property.price,
        color: propertyGroup.color,
        stepNumber: stepNumbers[i],
        houseCount: property.houseCount,
      ).inGridArea(location);

      list.add(namedAreaGridPlacement);
    }

    return list;
  }
}
