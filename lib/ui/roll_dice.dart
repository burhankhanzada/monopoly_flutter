import 'dart:math';

import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/dice/dice.dart';
import 'package:spaces2/spaces2.dart';

class RollRice extends StatefulWidget {
  const RollRice({super.key});

  @override
  State<RollRice> createState() => _RollRiceState();
}

class _RollRiceState extends State<RollRice> {
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
            final rn = Random();

            dice1Number = rn.nextInt(6);
            dice2Number = rn.nextInt(6);

            setState(() {});
          },
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
