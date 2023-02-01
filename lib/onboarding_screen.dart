import 'package:flutter/material.dart';
import 'package:introscreen/intro_screens/into_page1.dart';
import 'package:introscreen/intro_screens/intro_page2.dart';
import 'package:introscreen/intro_screens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'home_page.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onlastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlastPage = (index == 2);
              });
            },
            children: [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text('Skip'),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onlastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const HomePage1();
                              }),
                            );
                            _controller.nextPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text('Done'),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text('Next'),
                        ),
                ],
              )),
        ],
      ),
    );
  }
}
