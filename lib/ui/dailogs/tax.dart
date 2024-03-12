import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:spaces2/spaces2.dart';

class TaxDailog extends StatelessWidget {
  const TaxDailog({super.key, required this.taxStepModel});

  final TaxStepModel taxStepModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: dailogInnerrPadding,
      decoration: BoxDecoration(
        borderRadius: dailogBorderRadius2,
        border: Border.all(
          width: 10,
          color: taxStepModel.color,
        ),
      ),
      child: SpacedColumn.extraBig(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            taxStepModel.name,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            taxStepModel.icon,
            size: 250,
            color: taxStepModel.color,
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
