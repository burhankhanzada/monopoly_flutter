import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:spaces2/spaces2.dart';

class RailCard extends StatelessWidget {
  const RailCard({super.key, required this.railStepModel});

  final RailStepModel railStepModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: railStepModel.color,
        borderRadius: dailogBorderRadius2,
        border: Border.all(
          width: 10,
          color: railStepModel.color,
          style: BorderStyle.solid,
        ),
      ),
      child: SpacedColumn(
        children: [
          Text(
            railStepModel.name,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              padding: dailogInnerrPadding,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: dailogBorderRadius3,
              ),
              child: SpacedColumn(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.train,
                    size: 150,
                    color: Colors.teal,
                  ),
                  _buildRent(1, railStepModel.rentOne),
                  _buildRent(3, railStepModel.rentTwo),
                  _buildRent(2, railStepModel.rentTree),
                  _buildRent(4, railStepModel.rentFour),
                  Text(
                    'Mortage \$${railStepModel.mortgage}',
                    style: const TextStyle(
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

  Widget _buildRent(int number, int rent) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$number Rialroad Owned',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '\$$rent',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
