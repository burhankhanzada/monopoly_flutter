import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/simple_box.dart';

class RailRoadBox extends StatelessWidget {
  const RailRoadBox({
    super.key,
    required this.text,
    this.aligment = BoxAligment.vertical,
  });

  final String text;
  final BoxAligment aligment;

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
    );
  }
}
