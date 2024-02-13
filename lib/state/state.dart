import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constant/list_constant.dart';
import 'package:monopoly_flutter/models/player.dart';

final playersStepProvider =
    NotifierProvider<PlayerStepNotifier, List<Player>>(() {
  return PlayerStepNotifier();
});

class PlayerStepNotifier extends Notifier<List<Player>> {
  int _currentPlayerIndex = 0;

  @override
  List<Player> build() {
    return sixPlayerList;
  }

  void updateStep(int diceTotal) {
    List<Player> newState = [];

    for (int i = 0; i < state.length; i++) {
      var currentPlayer = state[i];

      if (i == _currentPlayerIndex) {
        final previousStep = currentPlayer.step;

        final nextStep = _calculateStepNumber(diceTotal, previousStep);

        currentPlayer = currentPlayer.copyWith(step: nextStep);
      }

      newState.add(currentPlayer);
    }

    state = newState;

    if (_currentPlayerIndex == 5) {
      _currentPlayerIndex = 0;
    } else {
      _currentPlayerIndex++;
    }
  }

  int _calculateStepNumber(int diceTotal, int currentStep) {
    if (currentStep > 27) {
      final tempTotal = diceTotal + currentStep;

      if (tempTotal > 39) {
        final x = 40 - currentStep;
        return diceTotal - x;
      }

      return currentStep + diceTotal;
    }

    return currentStep + diceTotal;
  }
}
