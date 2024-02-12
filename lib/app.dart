import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constant/list_constant.dart';
import 'package:monopoly_flutter/ui/board/board.dart';
import 'package:spaces2/spaces2.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Board(playerList: sixPlayerList),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Spacing.fixed(
        data: SpacingData.generate(8),
        child: child!,
      ),
    );
  }
}
