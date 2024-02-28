import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/models/player_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/token_model.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
import 'package:monopoly_flutter/ui/dice/dice_notifier.dart';

final gameNotifierProvider = ChangeNotifierProvider(GameNotifier.new);

class GameNotifier extends ChangeNotifier {
  Ref ref;

  GameNotifier(this.ref);

  late BuildContext context;

  init(BuildContext context) {
    this.context = context;
  }

  bool _showDialog = false;

  bool get showDialog => _showDialog;

  set showDialog(bool value) {
    _showDialog = value;
    notifyListeners();
  }

  late final tokensNotifier = ref.read(tokensNotifierProvider);

  int currentPlayerIndex = 0;

  List<PlayerModel> players = sixPlayerList;

  List<TokenModel> get tokens => tokensNotifier.tokens;

  int get _currentStepIndex => tokensNotifier.token.currentStep;
  StepModel get currentStep => stepList[_currentStepIndex];

  void changeTurn() {
    _showDialog = false;
    ref.read(diceNotifierProvider).isRolled = false;
    currentPlayerIndex++;
    currentPlayerIndex %= tokens.length;
    notifyListeners();
  }

  void onStep() {
    _showDialog = true;
    notifyListeners();
  }
}
