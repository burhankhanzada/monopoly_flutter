import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/property_model.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:spaces2/spaces2.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key, required this.propertyModel});

  final PropertyModel propertyModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: propertyModel.color,
        borderRadius: dailogBorderRadius2,
        border: Border.all(
          width: 10,
          color: propertyModel.color,
          style: BorderStyle.solid,
        ),
      ),
      child: SpacedColumn(
        children: [
          Text(
            propertyModel.name,
            style: TextStyle(
              fontSize: 35,
              color: propertyModel.color == Colors.yellow ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
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

  Widget _buildRent(int homeCount, int rent) {
    Widget icons = Row(
      children: List.generate(
        homeCount,
        (index) => const Icon(
          Icons.home,
          size: 40,
          color: Colors.green,
        ),
      ),
    );

    if (homeCount > 4) {
      icons = const Icon(
        Icons.apartment,
        size: 40,
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
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
