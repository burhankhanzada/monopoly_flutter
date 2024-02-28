import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:spaces2/spaces2.dart';

class ChanceDailog extends StatelessWidget {
  const ChanceDailog({super.key, required this.stepModel});

  final StepModel stepModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.purple,
        width: 10,
      )),
      child: const SpacedColumn.extraBig(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            chance,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.question_mark,
            size: 250,
            color: Colors.purple,
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
