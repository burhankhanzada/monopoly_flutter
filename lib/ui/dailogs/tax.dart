import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:spaces2/spaces2.dart';

class TaxDailog extends StatelessWidget {
  const TaxDailog({super.key, required this.taxStepModel});

  final TaxStepModel taxStepModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          border: Border.all(
        color: taxStepModel.color,
        width: 10,
      )),
      child: SpacedColumn.extraBig(
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
