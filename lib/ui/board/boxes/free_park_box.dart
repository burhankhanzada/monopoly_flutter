import 'package:flutter/material.dart';
import 'package:spaces2/spaces2.dart';

class FreeParkBox extends StatelessWidget {
  const FreeParkBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: SpacedColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/free_parking.png',
              height: 100,
              color: Colors.white,
            ),
            const Text(
              'Free Parking',
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
