import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/assets_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:spaces2/spaces2.dart';

class GotoJailDailog extends StatelessWidget {
  const GotoJailDailog({super.key, required this.stepModel});

  final StepModel stepModel;

  @override
  Widget build(BuildContext context) {
    const color = Colors.blue;

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
        children: [
          const Text(
            gotoJail,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            gotoJailAsset,
            height: 450,
            color: color,
          ),
        ],
      ),
    );
  }
}
