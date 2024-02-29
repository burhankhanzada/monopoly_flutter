import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/chance_step_model.dart';
import 'package:monopoly_flutter/models/steps/chest_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/dailogs/chance.dart';
import 'package:monopoly_flutter/ui/dailogs/chest.dart';
import 'package:monopoly_flutter/ui/dailogs/goto_jail.dart';
import 'package:monopoly_flutter/ui/dailogs/park.dart';
import 'package:monopoly_flutter/ui/dailogs/property/brought_property.dart';
import 'package:monopoly_flutter/ui/dailogs/property/buy_property.dart';
import 'package:monopoly_flutter/ui/dailogs/property/view_property.dart';
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

    if (!gameNotifier.isShowDialog) return const SizedBox();

    final step = gameNotifier.currentStep;

    Widget child = const SizedBox();

    if (step.index == 0) {
      child = const Text('Go');
    } else if (step.index == 10) {
      child = VisitngJailDailog(stepModel: step);
    } else if (step.index == 20) {
      child = ParkDailog(stepModel: step);
    } else if (step.index == 30) {
      child = GotoJailDailog(stepModel: step);
    } else if (step is TaxStepModel) {
      child = TaxDailog(taxStepModel: step);
    } else if (step is ChestStepModel) {
      child = ChestDailog(stepModel: step);
    } else if (step is ChanceStepModel) {
      child = ChanceDailog(stepModel: step);
    } else if (step is RailStepModel) {
      child = RailDailog(railStepModel: step);
    } else if (step is UtilityStepModel) {
      child = UtilityDailog(utilityStepModel: step);
    } else if (step is PropertyStepModel) {
      if (gameNotifier.showBroughtDialog) {
        child = BroughtPropertyDailog(propertyStepModel: step);
      } else if (gameNotifier.isDialogDismissable) {
        child = ViewPropertyDailog(propertyStepModel: step);
      } else {
        child = BuyPropertyDailog(propertyStepModel: step);
      }
    }

    return Stack(
      children: [
        GestureDetector(
          onTap: gameNotifier.hideDialog,
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
