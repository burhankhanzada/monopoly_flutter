import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';

class ChestBox extends StatelessWidget {
  const ChestBox({
    super.key,
    required this.step,
    this.position = BoxPosition.bottom,
    this.aligment = BoxAligment.vertical,
  });

  final StepModel step;
  final BoxAligment aligment;
  final BoxPosition position;

  @override
  Widget build(BuildContext context) {
    const icon = Icon(
      Icons.unarchive,
      size: 48,
      color: Colors.brown,
    );

    return IconBox(
      icon: icon,
      aligment: aligment,
      position: position,
      step: step,
      text: chest,
    );
  }
}
