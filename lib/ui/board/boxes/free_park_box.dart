import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/boxes/peice_box.dart';
import 'package:spaces2/spaces2.dart';

class FreeParkBox extends StatelessWidget {
  const FreeParkBox({
    super.key,
    required this.stepNumber,
  });

  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    return PieceBox(
      stepNumber: stepNumber,
      child: Container(
        color: Colors.green,
        child: Center(
          child: SpacedColumn(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Free Parking',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Image.asset(
                'assets/icons/free_parking.png',
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
