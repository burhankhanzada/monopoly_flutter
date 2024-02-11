import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/roll_dice.dart';

class CenterBox extends StatelessWidget {
  const CenterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: RollRice(),
      ),
    );
  }
}
