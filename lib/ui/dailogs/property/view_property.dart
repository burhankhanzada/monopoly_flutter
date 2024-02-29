import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/ui/dailogs/property/property_card.dart';
import 'package:spaces2/spaces2.dart';

class ViewPropertyDailog extends StatelessWidget {
  const ViewPropertyDailog({super.key, required this.propertyStepModel});

  final PropertyStepModel propertyStepModel;

  @override
  Widget build(BuildContext context) {
    final propertyModel = propertyStepModel.property;
    final ownedBy = propertyStepModel.ownedBy;

    String text = 'Property available for \$${propertyModel.price}';

    if (ownedBy != null) {
      text = 'Owned By ${ownedBy.name}';
    }

    return SpacedColumn.big(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: SizedBox(
            width: 450,
            child: PropertyCard(propertyModel: propertyModel),
          ),
        ),
      ],
    );
  }
}
