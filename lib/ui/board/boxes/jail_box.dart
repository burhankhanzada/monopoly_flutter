import 'package:flutter/material.dart';
import 'package:spaces2/spaces2.dart';

class JailBox extends StatelessWidget {
  const JailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(''),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: SpacedColumn(
                        children: [
                          const Text('In Jail', style: TextStyle(
                            color: Colors.white
                          ),),
                          Image.asset('assets/icons/jail.png', height: 80, color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Text('Just Visiting'),
            ),
          ],
        ),
      ),
    );
  }
}
