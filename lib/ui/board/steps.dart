import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/models/steps/chance_step_model.dart';
import 'package:monopoly_flutter/models/steps/chest_step_model.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/tax_step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/ui/board/boxes/free_park_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/go_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/goto_jail_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/text_icon_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/jail_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/property_box.dart';

class Steps extends StatelessWidget {
  const Steps({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _buidlStepWidgets().animate(interval: 0.1.seconds).scale(),
    );
  }

  List<Widget> _buidlStepWidgets() {
    final list = <Widget>[];

    for (final step in stepList) {
      late Widget box;

      if (step.index == 0) {
        box = GoBox(step: step);
      } else if (step.index == 10) {
        box = JailBox(step: step);
      } else if (step.index == 20) {
        box = FreeParkBox(step: step);
      } else if (step.index == 30) {
        box = GoToJailBox(step: step);
      } else if (step is TaxStepModel) {
        box = TextIconBox(
          step: step,
          position: step.position,
        );
      } else if (step is RailStepModel) {
        box = TextIconBox(
          step: step,
          position: step.position,
        );
      } else if (step is ChestStepModel) {
        box = TextIconBox(
          step: step,
          position: step.position,
        );
      } else if (step is ChanceStepModel) {
        box = TextIconBox(
          step: step,
          position: step.position,
        );
      } else if (step is UtilityStepModel) {
        box = TextIconBox(
          step: step,
          position: step.position,
        );
      } else if (step is PropertyStepModel) {
        box = PropertyBox(
          step: step,
          position: step.position,
        );
      }

      list.add(
        Positioned.fromRect(rect: step.rect, child: box),
      );
    }

    return list;
  }
}
