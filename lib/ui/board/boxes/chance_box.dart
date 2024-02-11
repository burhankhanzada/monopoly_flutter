import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/boxes/icon_box.dart';
import 'package:monopoly_flutter/ui/board/boxes/simple_box.dart';

class ChanceBox extends StatelessWidget {
  const ChanceBox({
    super.key,
    this.aligment = BoxAligment.vertical,
  });

  final BoxAligment aligment;

  @override
  Widget build(BuildContext context) {
    const icon = Icon(
      Icons.question_mark,
      size: 48,
      color: Colors.purple,
    );

    return IconBox(
      text: 'Chance',
      icon: icon,
      aligment: aligment,
    );
  }
}
