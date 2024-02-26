import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:monopoly_flutter/ui/board/board.dart';
import 'package:monopoly_flutter/ui/dice/roll_dice.dart';
import 'package:monopoly_flutter/ui/token/animated_token.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: FittedBox(
        child: Stack(
          children: [
            Board(),
            // PainterTokenTrack(),
            AnimatedToken(),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: RollRice(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
