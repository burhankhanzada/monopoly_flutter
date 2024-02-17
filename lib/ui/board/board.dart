import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/grid/grid_board.dart';
import 'package:monopoly_flutter/ui/board/painter/board_painter.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GridBoard(),
        // BoardpPainter(),
      ],
    );
  }
}
