import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/ui/components/custom_button.dart';
import 'package:spaces2/spaces2.dart';

class UtilityDailog extends StatelessWidget {
  const UtilityDailog({super.key, required this.utilityStepModel});

  final UtilityStepModel utilityStepModel;

  @override
  Widget build(BuildContext context) {
    final utilityModel = utilityStepModel;

    return SpacedColumn(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'For Sale',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: SpacedRow.big(
            children: [
              Expanded(
                child: _buildUtilityCard(),
              ),
              SizedBox(
                width: 200,
                child: SpacedColumn.big(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'For \$${utilityModel.price}',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const CustomButton(
                      color: Colors.green,
                      text: 'Buy',
                      fontSize: 40,
                    ),
                    const CustomButton(
                      color: Colors.red,
                      text: 'Auction',
                      fontSize: 40,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUtilityCard() {
    return Container(
      color: utilityStepModel.color,
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
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(16),
              width: double.maxFinite,
              color: Colors.white,
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
