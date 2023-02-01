import 'package:flutter/material.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.redAccent,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '"With the same habits, you’ll end up with the same results. But with better habits, anything is possible."',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 18)),
            ),
          )
        ]),
      ),
    );
  }
}
