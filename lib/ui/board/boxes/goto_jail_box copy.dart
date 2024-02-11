import 'package:flutter/material.dart';
import 'package:spaces2/spaces2.dart';

class GoToJailBox extends StatelessWidget {
  const GoToJailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: SpacedColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/police.png',
              height: 100,
              color: Colors.white,
            ),
            const Text(
              'Go To Jail',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
