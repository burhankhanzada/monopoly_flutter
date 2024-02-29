import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/components/custom_button.dart';
import 'package:monopoly_flutter/ui/dailogs/property/property_card.dart';
import 'package:spaces2/spaces2.dart';

class BuyPropertyDailog extends ConsumerWidget {
  const BuyPropertyDailog({super.key, required this.propertyStepModel});

  final PropertyStepModel propertyStepModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final propertyModel = propertyStepModel.property;

    final gameNotifier = ref.read(gameNotifierProvider);

    return SpacedColumn(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Property For Sale',
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
                      'For \$${propertyModel.price}',
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
                      onTap: () => gameNotifier.buy(propertyStepModel),
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
