import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/int_constan.dart';
import 'package:monopoly_flutter/models/token_model.dart';
import 'package:monopoly_flutter/ui/dice/dice_notifier.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/utils/track_util.dart';

final tokensNotifierProvider = ChangeNotifierProvider(TokensNotifier.new);

class TokensNotifier extends ChangeNotifier {
  Ref ref;

  TokensNotifier(this.ref);

  late final diceNotifier = ref.read(diceNotifierProvider);
  late final gameNotifier = ref.read(gameNotifierProvider);

  late final tokens = gameNotifier.players.map((e) => e.token).toList();

  late final tracks = calculateTracksRects();

  int stepCounter = 0;
  TokenModel get token => tokens[gameNotifier.currentPlayerIndex];

  void init(TickerProvider vsync) {
    setAnimationController(vsync);
  }

  void setAnimationController(TickerProvider vsync) {
    for (final token in tokens) {
      token.setAnimationAndStepInfo(
        vsync: vsync,
        end: tracks[1],
        begin: tracks[0],
        listener: (status) {
          if (status == AnimationStatus.completed) {
            stepCounter++;
            move();
          }
        },
      );
    }
  }

  Future<void> move() async {
    final output = diceNotifier.output;

    if (stepCounter != output) {
      token.isAnimating = true;
      notifyListeners();

      final currentStep = token.currentStep;

      final beginIndex = currentStep;

      var endIndex = token.currentStep + 1;

      if (endIndex > maxStepsInt) {
        endIndex = 0;
        token.currentStep = 0;
        final remiangSteps = output - stepCounter;
        stepCounter -= remiangSteps;
      }

      final tween = RectTween(
        begin: tracks[beginIndex],
        end: tracks[endIndex],
      );

      final curved = CurvedAnimation(
        parent: token.controller,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeOutCubic,
        ),
      );

      token.animation = tween.animate(curved);

      token.controller.forward(from: 0);
      token.currentStep++;
    } else {
      stepCounter = 0;
      token.isAnimating = false;
      notifyListeners();
      // gameNotifier.chnageTurn();

      gameNotifier.onStep();
    }
  }
}
