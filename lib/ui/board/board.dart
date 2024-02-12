import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:monopoly_flutter/constant/enum_constant.dart';
import 'package:monopoly_flutter/constant/property_constant.dart';
import 'package:monopoly_flutter/models/player.dart';
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
import 'package:monopoly_flutter/ui/board/boxes/railroad_box.dart';
import 'package:monopoly_flutter/ui/board/peice.dart';

class Board extends StatelessWidget {
  const Board({super.key, required this.playerList});

  final List<Player> playerList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FittedBox(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Container(
              width: 1000,
              height: 1000,
              padding: const EdgeInsets.all(2),
              color: Colors.black,
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
                children: [
                  ...top(),
                  ...left(),
                  ...right(),
                  ...bottom(),
                  ...coreners(),
                  const CenterBox().inGridArea('cen')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> coreners() {
    return [
      GoBox(
        playerList: playerList,
      ).inGridArea('go'),
      JailBox(
        playerList: playerList,
      ).inGridArea('jail'),
      FreeParkBox(
        playerList: playerList,
      ).inGridArea('fp'),
      GoToJailBox(
        playerList: playerList,
      ).inGridArea('gtj'),
    ];
  }

  List<Widget> bottom() {
    return [
      ...propertyGroupBoxesList(
        BoxPosition.bottom,
        propertyGroup1,
        ['p1', 'p2'],
      ),
      ...propertyGroupBoxesList(
        BoxPosition.bottom,
        propertyGroup2,
        ['p3', 'p4', 'p5'],
      ),
      ...[
        const ChestBox().inGridArea('cc1'),
        const IconBox(
          text: 'Income Tax',
          icon: Icon(
            Icons.paid,
            color: Colors.green,
            size: 48,
          ),
        ).inGridArea('t1'),
        const RailRoadBox(text: 'Reading Railroad').inGridArea('rr1'),
        const ChanceBox().inGridArea('ch1'),
      ],
    ];
  }

  List<Widget> left() {
    return [
      ...propertyGroupBoxesList(
        BoxPosition.left,
        propertyGroup3,
        ['p6', 'p7', 'p8'],
      ),
      ...propertyGroupBoxesList(
        BoxPosition.left,
        propertyGroup4,
        ['p9', 'p10', 'p11'],
      ),
      ...[
        const IconBox(
          text: 'Electric Company',
          aligment: BoxAligment.horizontal,
          icon: Icon(
            Icons.offline_bolt,
            color: Colors.amber,
            size: 48,
          ),
        ).inGridArea('u1'),
        const RailRoadBox(
          text: 'Pennsylvania Railroad',
          aligment: BoxAligment.horizontal,
        ).inGridArea('rr2'),
        const ChestBox(
          aligment: BoxAligment.horizontal,
        ).inGridArea('cc2'),
      ],
    ];
  }

  List<Widget> top() {
    return [
      ...propertyGroupBoxesList(
        BoxPosition.top,
        propertyGroup5,
        ['p12', 'p13', 'p14'],
      ),
      ...propertyGroupBoxesList(
        BoxPosition.top,
        propertyGroup6,
        ['p15', 'p16', 'p17'],
      ),
      ...[
        const ChanceBox().inGridArea('ch2'),
        const RailRoadBox(text: 'R & O Railroad').inGridArea('rr3'),
        const IconBox(
          text: 'Water Works',
          icon: Icon(
            Icons.water_drop,
            color: Colors.blue,
            size: 48,
          ),
        ).inGridArea('u2'),
      ],
    ];
  }

  List<Widget> right() {
    return [
      ...propertyGroupBoxesList(
        BoxPosition.right,
        propertyGroup7,
        ['p18', 'p19', 'p20'],
      ),
      ...propertyGroupBoxesList(
        BoxPosition.right,
        propertyGroup8,
        ['p21', 'p22'],
      ),
      ...[
        const ChestBox(
          aligment: BoxAligment.horizontal,
        ).inGridArea('cc3'),
        const RailRoadBox(
          text: 'Short Line',
          aligment: BoxAligment.horizontal,
        ).inGridArea('rr4'),
        const ChanceBox(
          aligment: BoxAligment.horizontal,
        ).inGridArea('ch3'),
        const IconBox(
          text: 'Luxury Tax',
          aligment: BoxAligment.horizontal,
          icon: Icon(
            Icons.favorite,
            size: 48,
            color: Colors.pink,
          ),
        ).inGridArea('t2'),
      ],
    ];
  }

  propertyGroupBoxesList(
    BoxPosition position,
    PropertyGroup propertyGroup,
    List<String> gridLocations,
  ) {
    final list = [];

    for (int i = 0; i < gridLocations.length; i++) {
      final location = gridLocations[i];
      final property = propertyGroup.properties[i];

      final namedAreaGridPlacement = PropertyBox(
        position: position,
        text: property.name,
        price: property.price,
        isHotel: property.isHotel,
        color: propertyGroup.color,
        houseCount: property.houseCount,
        peiceList:
            property.playerList.map((e) => Peice(color: e.color)).toList(),
      ).inGridArea(location);

      list.add(namedAreaGridPlacement);
    }

    return list;
  }
}
