import 'package:flutter/material.dart';
import 'package:onboarding_screen_flutter/screens/onboard/widgets/onboard_page1.dart';
import 'package:onboarding_screen_flutter/screens/onboard/widgets/onboard_page2.dart';
import 'package:onboarding_screen_flutter/screens/onboard/widgets/onboard_page3.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController? _controller;
  int _index = 0;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                _index = value;
              });
            },
            children: const [
              OnboardPage1(),
              OnboardPage2(),
              OnboardPage3()
            ],
          ),
          Positioned(
            bottom: 200, left: 0, right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _index == 0? fillDot(): _index == 2? tinyDot(): normalDot(),
                const SizedBox(width: 5),
                _index == 1? fillDot(): normalDot(),
                const SizedBox(width: 5),
                _index == 2? fillDot(): _index == 0? tinyDot(): normalDot()
              ],
            ),
          )
        ],
      ),
    );
  }

  fillDot() => Container(
    width: 10, height: 10,
    decoration: const BoxDecoration(
      color: Colors.deepOrange,
      shape: BoxShape.circle
    ),
  );

  normalDot() => Container(
    width: 7, height: 7,
    decoration: const BoxDecoration(
      color: Colors.grey,
      shape: BoxShape.circle
    ),
  );

  tinyDot() => Container(
    width: 5, height: 5,
    decoration: const BoxDecoration(
      color: Colors.grey,
      shape: BoxShape.circle
    ),
  );
}
