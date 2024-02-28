import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';

final diceNotifierProvider = ChangeNotifierProvider(DiceNotifier.new);

class DiceNotifier extends ChangeNotifier {
  final Ref ref;

  DiceNotifier(this.ref);

  late int _output;
  int get output => _output;
  set output(int value) {
    _output = value;
    notifyListeners();
  }

  bool _isRolled = false;
  bool get isRolled => _isRolled;
  set isRolled(bool value) {
    _isRolled = value;
    notifyListeners();
  }

  int _dice1Number = 1;
  int get dice1Number => _dice1Number;

  int _dice2Number = 6;
  int get dice2Number => _dice2Number;

  void rollDice() async {
    _isRolled = false;
    await _generateFakeRandomAnimation();
    _generateOutput();
    ref.read(tokensNotifierProvider).move();
    _isRolled = true;
  }

  int _generateOutput() {
    final random = Random();

    // added +1 to exlude zero
    _dice1Number = random.nextInt(6) + 1;
    _dice2Number = random.nextInt(6) + 1;

    _output = dice1Number + dice2Number;

    notifyListeners();
    return _output;
  }

  Future<void> _generateFakeRandomAnimation() async {
    var fakeRollCounter = 0;
    do {
      _generateOutput();
      await Future.delayed(
        const Duration(milliseconds: 100),
      );
      fakeRollCounter++;
    } while (fakeRollCounter != 5);
  }
}
