import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/tokens_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';

class GoBox extends StatelessWidget {
  const GoBox({
    super.key,
    required this.step,
  });

  final StepModel step;

  @override
  Widget build(BuildContext context) {
    return TokensBox(
      step: step,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: border,
          color: Colors.red,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              collect,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 56,
                  color: Colors.white,
                ),
                Text(
                  go,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
