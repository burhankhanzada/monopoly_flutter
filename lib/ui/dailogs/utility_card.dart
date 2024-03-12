import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:spaces2/spaces2.dart';

class UtilityCard extends StatelessWidget {
  const UtilityCard({super.key, required this.utilityStepModel});

  final UtilityStepModel utilityStepModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: utilityStepModel.color,
        borderRadius: dailogBorderRadius2,
        border: Border.all(
          width: 10,
          color: utilityStepModel.color,
          style: BorderStyle.solid,
        ),
      ),
      child: SpacedColumn(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              utilityStepModel.name,
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: dailogInnerrPadding,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: dailogBorderRadius3,
              ),
              child: SpacedColumn.big(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    utilityStepModel.icon,
                    size: 125,
                    color: utilityStepModel.color,
                  ),
                  const Text(
                    utlityMessage,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}