import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constant/list_constant.dart';
import 'package:monopoly_flutter/models/player.dart';
import 'package:monopoly_flutter/ui/dice/dice.dart';

final currentPlayerIndexProvider = StateProvider((ref) => 0);

final playersStepProvider =
    NotifierProvider<PlayerStepNotifier, List<Player>>(() {
  return PlayerStepNotifier();
});

class PlayerStepNotifier extends Notifier<List<Player>> {
  @override
  List<Player> build() {
    // return sixPlayerList;
    return [];
  }

  late final _diceTotal = ref.watch(diceProvider);

  void updateStep() {
    final currentPlayerIndex = ref.read(currentPlayerIndexProvider);

    List<Player> newState = [];

    for (int i = 0; i < state.length; i++) {
      var currentPlayer = state[i];

      if (i == currentPlayerIndex) {
        final previousStep = currentPlayer.step;

        final nextStep = _calculateStepNumber(_diceTotal, previousStep);

        currentPlayer = currentPlayer.copyWith(step: nextStep);
      }

      newState.add(currentPlayer);
    }

    state = newState;

    if (currentPlayerIndex == 5) {
      ref.read(currentPlayerIndexProvider.notifier).update((state) => 0);
    } else {
      ref
          .read(currentPlayerIndexProvider.notifier)
          .update((state) => state + 1);
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
