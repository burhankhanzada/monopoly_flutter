import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';

class ChanceBox extends StatelessWidget {
  const ChanceBox({
    super.key,
    required this.step,
    this.position = BoxPosition.bottom,
    this.aligment = BoxAligment.vertical,
  });

  final StepModel step;
  final BoxPosition position;
  final BoxAligment aligment;

  @override
  Widget build(BuildContext context) {
    const icon = Icon(
      Icons.question_mark,
      size: 48,
      color: Colors.purple,
    );

    return IconBox(
      icon: icon,
      text: chance,
      aligment: aligment,
      position: position,
      step: step,
    );
  }
}
