import 'package:flutter/material.dart';
import 'package:spaces2/spaces2.dart';

class GoBox extends StatelessWidget {
  const GoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.red,
      child: const SpacedColumn(
        children: [
          Text(
            'Collect \$200 Salary as You Pass',
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
          ),
          Expanded(
            child: SpacedRow(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 48,
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
    );
  }
}
