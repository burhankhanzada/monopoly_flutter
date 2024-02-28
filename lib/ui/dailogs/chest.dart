import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:spaces2/spaces2.dart';

class ChestDailog extends StatelessWidget {
  const ChestDailog({super.key, required this.stepModel});

  final StepModel stepModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.brown,
        width: 10,
      )),
      child: const SpacedColumn.extraBig(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            chest,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.unarchive,
            size: 250,
            color: Colors.brown,
          ),
          Text(
            'Lorem ipsum',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
