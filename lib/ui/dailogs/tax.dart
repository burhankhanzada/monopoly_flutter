import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:spaces2/spaces2.dart';

class TaxDailog extends StatelessWidget {
  const TaxDailog({super.key, required this.taxStepModel});

  final TaxStepModel taxStepModel;

  @override
  Widget build(BuildContext context) {
    final color = taxStepModel.isIncome ? Colors.green : Colors.red;
    final icon = taxStepModel.isIncome ? Icons.paid : Icons.favorite;
    final text = taxStepModel.isIncome ? taxName1 : taxName2;

    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          border: Border.all(
        color: color,
        width: 10,
      )),
      child: SpacedColumn.extraBig(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            icon,
            size: 250,
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
