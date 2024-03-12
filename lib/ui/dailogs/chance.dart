import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:spaces2/spaces2.dart';

class ChanceDailog extends StatelessWidget {
  const ChanceDailog({super.key, required this.stepModel});

  final StepModel stepModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: dailogBorderRadius2,
        border: Border.all(
          width: 10,
          color: Colors.purple,
        ),
      ),
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
