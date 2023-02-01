import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '"Your habits shape your identity, and your identity shapes your habits."',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
