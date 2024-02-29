import 'package:flutter/material.dart';
import 'package:monopoly_flutter/models/player_model.dart';
import 'package:spaces2/spaces2.dart';

class Player extends StatelessWidget {
  final PlayerModel playerModel;

  const Player({
    super.key,
    required this.playerModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
        color: playerModel.token.color.withOpacity(0.25),
      ),
      child: SpacedRow(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
              color: playerModel.token.color,
            ),
            width: 40,
            height: 40,
          ),
          Expanded(
            child: SpacedColumn.small(
              children: [
                Text(
                  playerModel.name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${playerModel.money}',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
