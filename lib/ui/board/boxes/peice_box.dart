import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/player.dart';
import 'package:monopoly_flutter/ui/board/peice.dart';
import 'package:monopoly_flutter/ui/board/peices.dart';

class PieceBox extends StatelessWidget {
  const PieceBox({
    super.key,
    required this.child,
    required this.playerList,
  });

  final Widget child;
  final List<Player> playerList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        Peices(
          peiceList: playerList.map((e) => Peice(color: e.color)).toList(),
        ),
      ],
    );
  }
}
