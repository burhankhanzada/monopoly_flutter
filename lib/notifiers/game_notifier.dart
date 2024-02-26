import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/list_constant.dart';
import 'package:monopoly_flutter/models/player.dart';
import 'package:monopoly_flutter/models/token.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';

final gameNotifierProvider = ChangeNotifierProvider(GameNotifier.new);

class GameNotifier extends ChangeNotifier {
  Ref ref;

  GameNotifier(this.ref);

  late final tokensNotifier = ref.read(tokensNotifierProvider);

  int currentPlayerIndex = 0;

  // List<PlayerModel> players = [player1, player2];
  List<PlayerModel> players = sixPlayerList;

  List<TokenModel> get tokens => tokensNotifier.tokens;

  void chnageTurn() {
    currentPlayerIndex++;
    currentPlayerIndex %= tokens.length;
    notifyListeners();
  }
}
