import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPage1 extends StatelessWidget {
  const OnboardPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/svg/places.svg', height: 100),
          const SizedBox(height: 20),
          Text('Discover Places near you', style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold
          )),
          const SizedBox(height: 10),
          const Text(
              "It's simple to find the food you like. Enter your address and let us do the rest.",
            style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
