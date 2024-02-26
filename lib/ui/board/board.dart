// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/grid/grid_board.dart';
import 'package:monopoly_flutter/ui/board/painter/painter_board.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GridBoard(),
        // PainterBoard(),
      ],
    );
  }
}
