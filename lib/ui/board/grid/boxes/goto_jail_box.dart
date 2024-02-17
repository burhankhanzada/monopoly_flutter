import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/peice_box.dart';
import 'package:spaces2/spaces2.dart';

class GoToJailBox extends StatelessWidget {
  const GoToJailBox({super.key, required this.stepNumber});

  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    return PieceBox(
      stepNumber: stepNumber,
      child: Container(
        color: Colors.blue,
        child: Center(
          child: SpacedColumn(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Go To Jail',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Image.asset(
                'assets/icons/police.png',
                height: 100,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
