import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/models/player_model.dart';
import 'package:monopoly_flutter/models/steps/buyable_mixin.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/models/steps/rail_step_model.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/models/steps/utility_step_model.dart';
import 'package:monopoly_flutter/models/token_model.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
import 'package:monopoly_flutter/ui/dice/dice_notifier.dart';

final gameNotifierProvider = ChangeNotifierProvider(GameNotifier.new);

class GameNotifier extends ChangeNotifier {
  Ref ref;

  GameNotifier(this.ref);

  late BuildContext context;

  bool _isShowDialog = false;
  bool get isShowDialog => _isShowDialog;

  bool isDialogDismissable = false;

  late final tokensNotifier = ref.read(tokensNotifierProvider);

  int currentPlayerIndex = 0;

  List<PlayerModel> players = sixPlayerList;

  PlayerModel get currentPLayer => players[currentPlayerIndex];

  List<TokenModel> get tokens => tokensNotifier.tokens;

  int get _currentStepIndex => tokensNotifier.token.currentStep;
  late StepModel currentStep;

  bool showBroughtDialog = false;

  init(BuildContext context) {
    this.context = context;
  }

  void changeTurn() {
    _isShowDialog = false;
    showBroughtDialog = false;
    ref.read(diceNotifierProvider).isRolled = false;
    currentPlayerIndex++;
    currentPlayerIndex %= tokens.length;
    notifyListeners();
  }

  void onStep() {
    currentStep = stepList[_currentStepIndex];
    showDialog();
  }

  void buy(StepModel step) {
    if (step is BuyableStep) {
      (stepList[step.index] as BuyableStep).ownedBy = currentPLayer;

      if (step is PropertyStepModel) {
        currentPLayer.properties.add(step.property);
        players[currentPlayerIndex].money =
            players[currentPlayerIndex].money - step.property.price;
      } else if (step is RailStepModel) {
        currentPLayer.railrolads.add(step);
        players[currentPlayerIndex].money =
            players[currentPlayerIndex].money - step.price;
      } else if (step is UtilityStepModel) {
        currentPLayer.utlities.add(step);
        players[currentPlayerIndex].money =
            players[currentPlayerIndex].money - step.price;
      }
    }

    showBroughtDialog = true;
    notifyListeners();
  }

  void showDialog() {
    _isShowDialog = true;
    isDialogDismissable = false;
    notifyListeners();
  }

  void hideDialog() {
    if (isDialogDismissable) {
      _isShowDialog = false;
      notifyListeners();
    }
  }

  void onTapStep(StepModel stepModel) {
    _isShowDialog = true;
    isDialogDismissable = true;
    currentStep = stepModel;
    notifyListeners();
  }
}
