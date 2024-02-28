import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/tokens_box.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:spaces2/spaces2.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    super.key,
    required this.text,
    required this.icon,
    required this.step,
    this.position = BoxPosition.bottom,
    this.aligment = BoxAligment.vertical,
  });

  final String text;
  final Widget icon;
  final StepModel step;
  final BoxAligment aligment;
  final BoxPosition position;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      text,
      softWrap: true,
      style: const TextStyle(fontWeight: FontWeight.w900),
      textAlign: TextAlign.center,
    );

    Widget child = SpacedColumn(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textWidget,
        icon,
      ],
    );

    if (aligment == BoxAligment.horizontal) {
      child = SpacedRow(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: textWidget),
          icon,
        ],
      );
    }

    child = Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        border: border,
        color: Colors.white,
      ),
      child: child,
    );

    return TokensBox(
      step: step,
      position: position,
      child: child,
    );
  }
}
