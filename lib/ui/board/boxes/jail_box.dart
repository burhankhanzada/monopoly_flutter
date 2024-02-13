import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/boxes/peice_box.dart';

class JailBox extends StatelessWidget {
  const JailBox({
    super.key,
    required this.stepNumber,
  });

  final int stepNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      '',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PieceBox(
                    stepNumber: stepNumber,
                    child: Container(
                      color: Colors.black,
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: [
                          const Text(
                            'In Jail',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Image.asset(
                            'assets/icons/jail.png',
                            height: 80,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Text(
              'Just Visiting',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
