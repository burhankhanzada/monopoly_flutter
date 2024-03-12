import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/board/board.dart';
import 'package:monopoly_flutter/ui/dailogs/step_dailog.dart';
import 'package:monopoly_flutter/ui/dice/roll_dice.dart';
import 'package:monopoly_flutter/ui/player/player.dart';
import 'package:monopoly_flutter/ui/token/animated_token.dart';
import 'package:monopoly_flutter/utils/size_util.dart';
import 'package:spaces2/spaces2.dart';

class Game extends ConsumerStatefulWidget {
  const Game({super.key});

  @override
  ConsumerState<Game> createState() => _GameState();
}

class _GameState extends ConsumerState<Game> {
  late GameNotifier gameNotifier = ref.read(gameNotifierProvider);

  late final players = gameNotifier.players;

  late final middle = players.length ~/ 2;

  late final part1 = players.sublist(0, middle);
  late final part2 = players.sublist(middle);

  @override
  void initState() {
    super.initState();
    gameNotifier = ref.read(gameNotifierProvider);
    gameNotifier.init(context);
  }

  @override
  Widget build(BuildContext context) {
    gameNotifier = ref.watch(gameNotifierProvider);
    return SafeArea(
      child: SingleChildScrollView(
        child: SpacedColumn(
          padding: const EdgeInsets.all(8),
          children: [
            const FittedBox(
              child: SizedBox.square(
                dimension: boardSize,
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Board(),
                        AnimatedToken(),
                      ],
                    ),
                    Positioned.fill(
                      child: StepDailog(),
                    ),
                  ],
                ),
              ),
            ),
            SpacedRow(
              children: [
                Expanded(
                  child: SpacedColumn(
                    children: part1.map((e) => Player(playerModel: e)).toList(),
                  ),
                ),
                const RollRice(),
                Expanded(
                  child: SpacedColumn(
                    children: part2.map((e) => Player(playerModel: e)).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
