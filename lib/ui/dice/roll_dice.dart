import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/ui/dice/dice.dart';
import 'package:monopoly_flutter/ui/dice/dice_notifier.dart';
import 'package:spaces2/spaces2.dart';

class RollRice extends ConsumerStatefulWidget {
  const RollRice({super.key});

  @override
  ConsumerState<RollRice> createState() => _RollRiceState();
}

class _RollRiceState extends ConsumerState<RollRice> {
  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      mainAxisSize: MainAxisSize.min,
      children: [
        Consumer(
          builder: (context, ref, child) {
            final diceNotifier = ref.watch(diceNotifierProvider);
            return SpacedRow(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Dice(number: diceNotifier.dice1Number),
                Dice(number: diceNotifier.dice2Number),
              ],
            );
          },
        ),
        Consumer(
          builder: (context, ref, child) {
            return ElevatedButton(
              onPressed: ref.read(diceNotifierProvider).rollDice,
              child: const Text('Roll Dice'),
            );
          },
        )
      ],
    );
  }
}
