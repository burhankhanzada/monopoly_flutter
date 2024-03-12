import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/ui/dailogs/property_card.dart';
import 'package:monopoly_flutter/ui/dailogs/rail_card.dart';
import 'package:monopoly_flutter/ui/dailogs/utility_card.dart';
import 'package:spaces2/spaces2.dart';

class ViewBuyablStepDailog extends StatelessWidget {
  const ViewBuyablStepDailog({super.key, required this.step});

  final BuyableStep step;

  @override
  Widget build(BuildContext context) {
    final ownedBy = step.ownedBy;

    late String title;
    late Widget card;

    if (step is PropertyStepModel) {
      final model = (step as PropertyStepModel).property;
      title = 'Property available for \$${model.price}';
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

    if (ownedBy != null) {
      title = 'Owned By ${ownedBy.name}';
    }

    return SpacedColumn(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: SizedBox(
            width: 450,
            child: card,
          ),
        ),
      ],
    );
  }
}
