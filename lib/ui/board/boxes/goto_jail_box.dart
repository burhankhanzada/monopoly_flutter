import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/assets_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/boxes/tokens_box.dart';
import 'package:spaces2/spaces2.dart';

class GoToJailBox extends StatelessWidget {
  const GoToJailBox({super.key, required this.step});

  final StepModel step;

  @override
  Widget build(BuildContext context) {
    return TokensBox(
      step: step,
      isCorner: true,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: stepBorderRadiusCirular,
        ),
        child: Center(
          child: SpacedColumn(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                gotoJail,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Image.asset(
                gotoJailAsset,
                height: 100,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
