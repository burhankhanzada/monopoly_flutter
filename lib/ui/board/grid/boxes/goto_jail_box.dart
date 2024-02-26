import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/tokens_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:spaces2/spaces2.dart';

class GoToJailBox extends StatelessWidget {
  const GoToJailBox({super.key, required this.stepNumber});

  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    return TokensBox(
      stepNumber: stepNumber,
      child: Container(
        decoration: BoxDecoration(
          border: border,
          color: Colors.blue,
        ),
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
