import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/buyable_step_model.dart';
import 'package:monopoly_flutter/models/utility_model.dart';
import 'package:monopoly_flutter/ui/components/custom_button.dart';
import 'package:spaces2/spaces2.dart';

class UtilityDailog extends StatelessWidget {
  const UtilityDailog({super.key, required this.buyableStepModel});

  final BuyableStepModel buyableStepModel;

  @override
  Widget build(BuildContext context) {
    final utilityModel = buyableStepModel.utilityModel!;

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
                child: _buildUtilityCard(utilityModel),
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

  Widget _buildUtilityCard(UtilityModel utilityModel) {

    final color = utilityModel.isElectricity ? Colors.amber : Colors.blue;
    final icon = utilityModel.isElectricity ? Icons.offline_bolt : Icons.water_drop;

    return Container(
      color: utilityModel.isElectricity ? Colors.amber : Colors.blue,
      child: SpacedColumn(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              utilityModel.name,
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
                    icon,
                    size: 125,
                    color: color,
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
