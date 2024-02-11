import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constant/enum_constant.dart';
import 'package:monopoly_flutter/ui/board/boxes/icon_box.dart';

class ChestBox extends StatelessWidget {
  const ChestBox({
    super.key,
    this.aligment = BoxAligment.vertical,
  });

  final BoxAligment aligment;

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
      text: 'Community Chest',
    );
  }
}
