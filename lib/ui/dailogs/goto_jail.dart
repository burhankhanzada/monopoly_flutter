import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/assets_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:spaces2/spaces2.dart';

class GotoJailDailog extends StatelessWidget {
  const GotoJailDailog({super.key, required this.stepModel});

  final StepModel stepModel;

  @override
  Widget build(BuildContext context) {
    const color = Colors.blue;

    return Container(
      padding: dailogInnerrPadding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: color,
          width: 10,
        ),
      ),
      child: SpacedColumn.extraBig(
        mainAxisAlignment: MainAxisAlignment.center,
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
