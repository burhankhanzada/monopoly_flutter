import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/ui/dailogs/property/property_card.dart';
import 'package:spaces2/spaces2.dart';

class BroughtPropertyDailog extends StatelessWidget {
  const BroughtPropertyDailog({super.key, required this.propertyStepModel});

  final PropertyStepModel propertyStepModel;

  @override
  Widget build(BuildContext context) {
    final propertyModel = propertyStepModel.property;
    final ownedBy = propertyStepModel.ownedBy!;

    return SpacedColumn(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Property Brought',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: SpacedRow.big(
            children: [
              Expanded(
                child: PropertyCard(propertyModel: propertyModel),
              ),
              SizedBox(
                width: 200,
                child: SpacedColumn.big(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$${propertyModel.price}',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ownedBy.name,
                      style: TextStyle(
                        fontSize: 40,
                        color: ownedBy.token.color,
                        fontWeight: FontWeight.bold,
                      ),
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
}
