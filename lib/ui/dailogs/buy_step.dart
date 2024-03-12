import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/components/custom_button.dart';
import 'package:monopoly_flutter/ui/dailogs/property_card.dart';
import 'package:monopoly_flutter/ui/dailogs/rail_card.dart';
import 'package:monopoly_flutter/ui/dailogs/utility_card.dart';
import 'package:spaces2/spaces2.dart';

class BuyStepDailog extends ConsumerWidget {
  const BuyStepDailog({super.key, required this.step});

  final BuyableStep step;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameNotifier = ref.read(gameNotifierProvider);

    late String title;
    late StepModel subType;
    late Widget card;
    late int price;

    if (step is PropertyStepModel) {
      title = 'Property For Sale';
      subType = step as PropertyStepModel;
      final model = (step as PropertyStepModel).property;
      price = model.price;
      card = PropertyCard(propertyModel: model);
    } else if (step is RailStepModel) {
      final model = step as RailStepModel;
      subType = model;
      price = model.price;
      title = 'Railroad available for \$${model.price}';
      card = RailCard(railStepModel: model);
    } else if (step is UtilityStepModel) {
      final model = step as UtilityStepModel;
      subType = model;
      price = model.price;
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
                    Text(
                      'For \$$price',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomButton(
                      color: Colors.green,
                      text: 'Buy',
                      fontSize: 40,
                      onTap: () => gameNotifier.buy(subType),
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
}
