import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';

class RailBox extends StatelessWidget {
  const RailBox({
    super.key,
    required this.text,
    required this.step,
    this.position = BoxPosition.bottom,
    this.aligment = BoxAligment.vertical,
  });

  final String text;
  final StepModel step;
  final BoxAligment aligment;
  final BoxPosition position;

  @override
  Widget build(BuildContext context) {
    const icon = Icon(
      Icons.train,
      size: 48,
      color: Colors.teal,
    );

    return IconBox(
      text: text,
      icon: icon,
      aligment: aligment,
      position: position,
      step: step,
    );
  }
}
