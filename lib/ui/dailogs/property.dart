import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:monopoly_flutter/models/steps/buyable_step_model.dart';
import 'package:monopoly_flutter/models/property_model.dart';
import 'package:monopoly_flutter/ui/components/custom_button.dart';
import 'package:spaces2/spaces2.dart';

class PropertyDailog extends StatelessWidget {
  const PropertyDailog({super.key, required this.buyableStepModel});

  final BuyableStepModel buyableStepModel;

  @override
  Widget build(BuildContext context) {
    final propertyModel = buyableStepModel.propertyModel!;

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
                child: _buildPropertyCard(propertyModel),
              ),
              SizedBox(
                width: 200,
                child: SpacedColumn.big(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'For \$${propertyModel.price}',
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

  Widget _buildPropertyCard(PropertyModel propertyModel) {
    return Container(
      color: propertyModel.color,
      child: SpacedColumn(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              propertyModel.name,
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
                  Text(
                    'Rent \$${propertyModel.rent}',
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _buildRent(1, propertyModel.rentOneHouse),
                  _buildRent(2, propertyModel.rentTwoHouse),
                  _buildRent(3, propertyModel.rentThreeHouse),
                  _buildRent(4, propertyModel.rentFourHouse),
                  _buildRent(5, propertyModel.rentHotel),
                  Text(
                    'Constrution \$${propertyModel.hosueCost} each',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Mortage \$${propertyModel.mortgage}',
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

  Widget _buildRent(int homeCount, int rent) {
    Widget icons = Row(
      children: List.generate(
        homeCount,
        (index) => const Icon(
          Icons.home,
          size: 50,
          color: Colors.green,
        ),
      ),
    );

    if (homeCount > 4) {
      icons = const Icon(
        Icons.apartment,
        size: 50,
        color: Colors.red,
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: icons,
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
