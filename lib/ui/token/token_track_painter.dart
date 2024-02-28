import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/token/track_util.dart';

class PainterTokenTrack extends StatelessWidget {
  const PainterTokenTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TokenTrackPainter(),
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
