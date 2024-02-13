import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/visual_board.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: const FittedBox(
            child: Stack(
              children: [
                VisualBoard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
