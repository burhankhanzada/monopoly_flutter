import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/models/steps/icon_step_model.dart';
import 'package:monopoly_flutter/ui/board/boxes/tokens_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:spaces2/spaces2.dart';

class TextIconBox extends StatelessWidget {
  const TextIconBox({
    super.key,
    required this.step,
    required this.position,
  });

  final BoxPosition position;
  final TextIconStepModel step;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      step.name,
      softWrap: true,
      style: const TextStyle(fontWeight: FontWeight.w900),
      textAlign: TextAlign.center,
    );

    final icon = Icon(
      step.icon,
      size: 48,
      color: step.color,
    );

    Widget child = SpacedColumn(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textWidget,
        icon,
      ],
    );

    if (position == BoxPosition.left || position == BoxPosition.right) {
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
      position: BoxPosition.bottom,
      child: child,
    );
  }
}
