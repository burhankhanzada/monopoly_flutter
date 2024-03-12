import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/token_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
import 'package:monopoly_flutter/ui/token/align_tokens.dart';
import 'package:monopoly_flutter/ui/token/static_token.dart';

class TokensBox extends ConsumerWidget {
  const TokensBox({
    super.key,
    required this.step,
    required this.child,
    required this.isCorner,
    this.showTokens = true,
  });

  final Widget child;
  final bool isCorner;
  final StepModel step;
  final bool showTokens;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokensNotifier = ref.watch(tokensNotifierProvider);
    final gameNotifier = ref.watch(gameNotifierProvider);

    final tokens = <TokenModel>[];

    for (var token in tokensNotifier.tokens) {
      if (token.currentStep == step.index) {
        if (!token.isAnimating) {
          tokens.add(token);
        }
      }
    }
    if (!showTokens) return child;

    return GestureDetector(
      onTap: () => gameNotifier.onTapStep(step),
      child: Stack(
        alignment: Alignment.center,
        children: [
          child,
          AlignTokens(
            isCorner: isCorner,
            position: step.position,
            tokenList: tokens.map((e) => StaticToken(color: e.color)).toList(),
          ),
          if (gameNotifier.isShowDialog &&
              gameNotifier.currentStep.index != step.index)
            Positioned.fill(
              child: Container(color: Colors.black54),
            )
        ],
      ),
    );
  }
}
