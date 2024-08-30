import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final screen_width = MediaQuery.of(context).size.width;
    // final screen_height = MediaQuery.of(context).size.height;

    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Image(image: AssetImage('asset/images/flutter-logo-3.png')),
        const Text(
          'Learn Flutter and Dart',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Color(0xDBF9F9F9),
              wordSpacing: 3.0,
              letterSpacing: 1.3,
              fontStyle: FontStyle.italic,
              decorationThickness: 5.0),
        ),
        OutlinedButton.icon(
            icon: const Icon(
              Icons.start_outlined,
              color: Color(0xCFF9F9F9),
            ),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                elevation: 5.0,
                padding: const EdgeInsets.only(
                    left: 30.0, right: 35.0, top: 8.0, bottom: 8.0),
                animationDuration: const Duration(seconds: 1)),
            label: const Text('Start Quiz',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xC5F9F9F9),
                    wordSpacing: 3.0,
                    letterSpacing: 1.3,
                    fontStyle: FontStyle.italic,
                    decorationThickness: 5.0)))
      ],
    ));
  }
}
