import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/rail_model.dart';
import 'package:monopoly_flutter/models/steps/buyable_step_model.dart';
import 'package:monopoly_flutter/ui/components/custom_button.dart';
import 'package:spaces2/spaces2.dart';

class RailDailog extends StatelessWidget {
  const RailDailog({super.key, required this.buyableStepModel});

  final BuyableStepModel buyableStepModel;

  @override
  Widget build(BuildContext context) {
    final railModel = buyableStepModel.railModel!;

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
                child: _buildRialCard(railModel),
              ),
              SizedBox(
                width: 200,
                child: SpacedColumn.big(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'For \$${railModel.price}',
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

  Widget _buildRialCard(RailModel rialModel) {
    return Container(
      color: Colors.teal,
      child: SpacedColumn(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              rialModel.name,
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
              child: SpacedColumn(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.train,
                    size: 150,
                    color: Colors.teal,
                  ),
                  _buildRent(1, rialModel.rentOne),
                  _buildRent(3, rialModel.rentTwo),
                  _buildRent(2, rialModel.rentTree),
                  _buildRent(4, rialModel.rentFour),
                  Text(
                    'Mortage \$${rialModel.mortgage}',
                    style: const TextStyle(
                      fontSize: 35,
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
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '\$$rent',
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
