import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/boxes/simple_box.dart';
import 'package:spaces2/spaces2.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    super.key,
    required this.text,
    required this.icon,
    this.aligment = BoxAligment.vertical,
  });

  final String text;
  final Widget icon;
  final BoxAligment aligment;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      text,
      softWrap: true,
      style: const TextStyle(
        fontWeight: FontWeight.w900
      ),
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

    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: double.maxFinite,
      child: child,
    );
  }
}
