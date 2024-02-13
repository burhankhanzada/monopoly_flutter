import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/boxes/peice_box.dart';

class GoBox extends StatelessWidget {
  const GoBox({
    super.key,
    required this.stepNumber,
  });

  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    return PieceBox(
      stepNumber: stepNumber,
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.red,
        child: const Column(
          children: [
            Text(
              'Collect \$200 Salary as You Pass',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 56,
                    color: Colors.white,
                  ),
                  Text(
                    'GO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
