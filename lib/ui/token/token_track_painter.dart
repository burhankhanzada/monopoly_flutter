import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/token/track_util.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

class PainterTokenTrack extends StatelessWidget {
  const PainterTokenTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: boardSize,
      child: CustomPaint(
        painter: TokenTrackPainter(),
      ),
    );
  }
}

class TokenTrackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final tracks = calculateTracksRects();

    for (final e in tracks) {
      canvas.drawOval(e, Paint()..color = Colors.black);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
