import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/state/state.dart';
import 'package:monopoly_flutter/ui/board/boxes/property_box.dart';
import 'package:monopoly_flutter/ui/board/peice.dart';
import 'package:monopoly_flutter/ui/board/peices.dart';

class PieceBox extends ConsumerWidget {
  const PieceBox({
    super.key,
    required this.child,
    required this.stepNumber,
    this.position = BoxPosition.bottom,
  });

  final Widget child;
  final int stepNumber;
  final BoxPosition position;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerList = ref.watch(playersStepProvider);

    final peicesList = [];

    for (var e in playerList) {
      if (e.step == stepNumber) {
        peicesList.add(e);
      }
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        Peices(
          position: position,
          peiceList: peicesList.map((e) => Peice(color: e.color)).toList(),
        ),
      ],
    );
  }
}
