import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/assets_constant.dart';
import 'package:monopoly_flutter/constants/string_constant.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/token_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
import 'package:monopoly_flutter/ui/token/align_tokens.dart';
import 'package:monopoly_flutter/ui/token/static_token.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';

class JailBox extends ConsumerStatefulWidget {
  const JailBox({
    super.key,
    required this.step,
  });

  final StepModel step;

  @override
  ConsumerState<JailBox> createState() => _JailBoxState();
}

class _JailBoxState extends ConsumerState<JailBox> {
  late GameNotifier gameNotifier;

  @override
  Widget build(BuildContext context) {
    final tokensNotifier = ref.watch(tokensNotifierProvider);
    gameNotifier = ref.watch(gameNotifierProvider);

    final inJailList = <TokenModel>[];
    final outJailList = <TokenModel>[];

    for (var token in tokensNotifier.tokens) {
      if (token.currentStep == widget.step.index) {
        if (!token.isAnimating) {
          if (token.isInJail) {
            inJailList.add(token);
          } else {
            outJailList.add(token);
          }
        }
      }
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: border,
            color: Colors.white,
          ),
          child: Stack(
            children: [
              inJailWidget(inJailList),
              visiting(outJailList),
            ],
          ),
        ),
        if (gameNotifier.isShowDialog &&
            gameNotifier.currentStep.index != widget.step.index)
          Container(
            color: Colors.black54,
          )
      ],
    );
  }

  Widget visiting(List<TokenModel> outJailList) {
    return Positioned.fill(
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              justVisiting,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          AlignTokens(
            tokenList:
                outJailList.map((e) => StaticToken(color: e.color)).toList(),
          )
        ],
      ),
    );
  }

  Widget inJailWidget(List<TokenModel> inJailList) {
    return Positioned(
      top: 0,
      right: 0,
      left: 30,
      bottom: 30,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  const Text(
                    inJail,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Image.asset(
                    jailAsset,
                    height: 80,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          AlignTokens(
            tokenList:
                inJailList.map((e) => StaticToken(color: e.color)).toList(),
          )
        ],
      ),
    );
  }
}
