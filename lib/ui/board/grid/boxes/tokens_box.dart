import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/token.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/property_box.dart';
import 'package:monopoly_flutter/ui/token/align_tokens.dart';
import 'package:monopoly_flutter/ui/token/static_token.dart';

class TokensBox extends ConsumerWidget {
  const TokensBox({
    super.key,
    required this.child,
    this.showTokens = true,
    required this.stepNumber,
    this.position = BoxPosition.bottom,
  });

  final Widget child;
  final int stepNumber;
  final bool showTokens;
  final BoxPosition position;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tokensNotifier = ref.watch(tokensNotifierProvider);

    final peicesList = <TokenModel>[];

    for (var token in tokensNotifier.tokens) {
      if (token.currentStep == stepNumber) {
        if (!token.isAnimating) {
          peicesList.add(token);
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
          tokenList: peicesList.map((e) => StaticToken(color: e.color)).toList(),
        ),
      ],
    );
  }
}
