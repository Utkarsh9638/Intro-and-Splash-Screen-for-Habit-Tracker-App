import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '"Habits are the compound interest of self-improvement."',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                    fontFamily: AutofillHints.addressState),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
