import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushNamed(context, "onBoarding_screen"),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_qzvumybq.json'),
          ),
          Text(
            "Habit Tracker App",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
