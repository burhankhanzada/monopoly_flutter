import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/token_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';
import 'package:monopoly_flutter/ui/token/align_tokens.dart';
import 'package:monopoly_flutter/ui/token/static_token.dart';

class TokensBox extends ConsumerWidget {
  const TokensBox({
    super.key,
    required this.step,
    required this.child,
    this.showTokens = true,
    this.position = BoxPosition.bottom,
  });

  final Widget child;
  final StepModel step;
  final bool showTokens;
  final BoxPosition position;

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

    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        AlignTokens(
          position: position,
          tokenList: tokens.map((e) => StaticToken(color: e.color)).toList(),
        ),
        if (gameNotifier.showDialog && gameNotifier.currentStep.index != step.index) Container(color: Colors.black54,)
      ],
    );
  }
}
