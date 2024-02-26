import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';

class ChanceBox extends StatelessWidget {
  const ChanceBox({
    super.key,
    required this.stepNumber,
    this.position = BoxPosition.bottom,
    this.aligment = BoxAligment.vertical,
  });

  final int stepNumber;
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
      text: 'Chance',
      aligment: aligment,
      position: position,
      stepNumber: stepNumber,
    );
  }
}
