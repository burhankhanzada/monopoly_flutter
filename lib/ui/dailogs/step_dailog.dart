import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/chance_step_model.dart';
import 'package:monopoly_flutter/models/steps/chest_step_model.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/dailogs/buy_step.dart';
import 'package:monopoly_flutter/ui/dailogs/step_brought.dart';
import 'package:monopoly_flutter/ui/dailogs/chance.dart';
import 'package:monopoly_flutter/ui/dailogs/chest.dart';
import 'package:monopoly_flutter/ui/dailogs/goto_jail.dart';
import 'package:monopoly_flutter/ui/dailogs/park.dart';
import 'package:monopoly_flutter/ui/dailogs/tax.dart';
import 'package:monopoly_flutter/ui/dailogs/view_buyable_step.dart';
import 'package:monopoly_flutter/ui/dailogs/visiting_jail.dart';
import 'package:monopoly_flutter/utils/size_util.dart';
import 'package:monopoly_flutter/utils/style_util.dart';

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
    } else if (step is BuyableStep) {
      final buyableStep = step as BuyableStep;
      if (gameNotifier.showBroughtDialog) {
        child = StepBroughtDailog(step: buyableStep);
      } else if (gameNotifier.isDialogDismissable) {
        child = ViewBuyablStepDailog(step: buyableStep);
      } else {
        child = BuyStepDailog(step: buyableStep);
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
            padding: dailogInnerrPadding,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}
