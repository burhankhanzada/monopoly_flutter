import 'package:flutter/material.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';

class CenterBox extends StatelessWidget {
  const CenterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: border,
        color: Colors.white,
      ),
      // child: const Center(
      //   child: RollRice(),
      // ),
    );
  }
}
