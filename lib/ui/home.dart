import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/game.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Game(),
    );
  }
}
