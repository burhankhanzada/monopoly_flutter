import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/assets_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/tokens_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:spaces2/spaces2.dart';

class FreeParkBox extends StatelessWidget {
  const FreeParkBox({
    super.key,
    required this.step,
  });

  final StepModel step;

  @override
  Widget build(BuildContext context) {
    return TokensBox(
      step: step,
      child: Container(
        decoration: BoxDecoration(
          border: border,
          color: Colors.green,
        ),
        child: Center(
          child: SpacedColumn(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                park,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Image.asset(
                parkAsset,
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
