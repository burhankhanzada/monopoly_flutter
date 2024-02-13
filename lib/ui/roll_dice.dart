import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/state/state.dart';
import 'package:monopoly_flutter/ui/dice/dice.dart';
import 'package:spaces2/spaces2.dart';

class RollRice extends ConsumerStatefulWidget {
  const RollRice({super.key});

  @override
  ConsumerState<RollRice> createState() => _RollRiceState();
}

class _RollRiceState extends ConsumerState<RollRice> {
  int dice1Number = 1;
  int dice2Number = 6;

  @override
  Widget build(BuildContext context) {
    return SpacedColumn(
      mainAxisSize: MainAxisSize.min,
      children: [
        SpacedRow(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Dice(number: dice1Number),
            Dice(number: dice2Number),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            final rn = math.Random();

            // added +1 in exlude zero 
            dice1Number = rn.nextInt(6) + 1;
            dice2Number = rn.nextInt(6) + 1;

            log(dice1Number.toString());
            log(dice2Number.toString());

            final total = dice1Number + dice2Number;

            log(total.toString());

            ref.read(playersStepProvider.notifier).updateStep(total);

            setState(() {});
          },
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
