import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:monopoly_flutter/ui/board/boxes/simple_box.dart';

class CenterBox extends StatelessWidget {
  const CenterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleBox(
      color: Colors.white,
      text: 'Center',
    ).inGridArea('cen');
  }
}
