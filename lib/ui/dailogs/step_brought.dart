import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/ui/dailogs/property_card.dart';
import 'package:monopoly_flutter/ui/dailogs/rail_card.dart';
import 'package:monopoly_flutter/ui/dailogs/utility_card.dart';
import 'package:spaces2/spaces2.dart';

class StepBroughtDailog extends StatelessWidget {
  const StepBroughtDailog({super.key, required this.step});

  final BuyableStep step;

  @override
  Widget build(BuildContext context) {
    final ownedBy = step.ownedBy!;

    late String title;
    late Widget card;

    if (step is PropertyStepModel) {
      title = 'Property Brought';
      final model = (step as PropertyStepModel).property;
      card = PropertyCard(propertyModel: model);
    } else if (step is RailStepModel) {
      final model = step as RailStepModel;
      title = 'Railroad available for \$${model.price}';
      card = RailCard(railStepModel: model);
    } else if (step is UtilityStepModel) {
      final model = step as UtilityStepModel;
      title = 'Utility available for \$${model.price}';
      card = UtilityCard(utilityStepModel: model);
    }

    return SpacedColumn(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: SpacedRow.big(
            children: [
              Expanded(
                child: card,
              ),
              SizedBox(
                width: 200,
                child: SpacedColumn.big(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   '\$${propertyModel.price}',
                    //   style: const TextStyle(
                    //     fontSize: 40,
                    //     color: Colors.green,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
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
