import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/buyable_step_model.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/dailogs/chance.dart';
import 'package:monopoly_flutter/ui/dailogs/chest.dart';
import 'package:monopoly_flutter/ui/dailogs/goto_jail.dart';
import 'package:monopoly_flutter/ui/dailogs/park.dart';
import 'package:monopoly_flutter/ui/dailogs/property.dart';
import 'package:monopoly_flutter/ui/dailogs/rail.dart';
import 'package:monopoly_flutter/ui/dailogs/tax.dart';
import 'package:monopoly_flutter/ui/dailogs/utility.dart';
import 'package:monopoly_flutter/ui/dailogs/visiting_jail.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

class StepDailog extends ConsumerWidget {
  const StepDailog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameNotifier = ref.watch(gameNotifierProvider);

    if (!gameNotifier.showDialog) return const SizedBox();

    final step = gameNotifier.currentStep;

    Widget child = const SizedBox();

    if (step.isGO) {
      child = const Text('Go');
    } else if (step.isJail) {
      child = VisitngJailDailog(stepModel: step);
    } else if (step.isParking) {
      child = ParkDailog(stepModel: step);
    } else if (step.isGotoJail) {
      child = GotoJailDailog(stepModel: step);
    } else if (step is TaxStepModel) {
      child = TaxDailog(taxStepModel: step);
    } else if (step.isChest) {
      child = ChestDailog(stepModel: step);
    } else if (step.isChance) {
      child = ChanceDailog(stepModel: step);
    } else if (step is BuyableStepModel && step.railModel != null) {
      child = RailDailog(buyableStepModel: step);
    } else if (step is BuyableStepModel && step.utilityModel != null) {
      child = UtilityDailog(buyableStepModel: step);
    } else if (step is BuyableStepModel && step.propertyModel != null) {
      child = PropertyDailog(buyableStepModel: step);
    }

    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            gameNotifier.showDialog = false;
          },
          child: Container(color: Colors.transparent),
        ),
        Center(
          child: Container(
            width: boardSize - cornerSize * 2,
            height: boardSize - cornerSize * 2,
            color: Colors.white,
            child: child,
          ),
        ),
      ],
    );
  }
}
