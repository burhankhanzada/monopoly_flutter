import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/assets_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:spaces2/spaces2.dart';

class VisitngJailDailog extends StatelessWidget {
  const VisitngJailDailog({super.key, required this.stepModel});

  final StepModel stepModel;

  @override
  Widget build(BuildContext context) {
    const color = Colors.black;

    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: 10,
        ),
      ),
      child: SpacedColumn.extraBig(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Just Visitng Jail',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            jailAsset,
            height: 250,
            color: color,
          ),
          const Text(
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
