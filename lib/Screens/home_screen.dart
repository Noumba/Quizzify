import 'package:flutter/material.dart';
import 'package:quizzify/Widgets/custom_outlined_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.updateScreen});
  final Function updateScreen;

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
        CustomOutlinedIconButton(
          buttonLabel: 'Start Quiz',
          updateScreen: updateScreen,
        )
      ],
    ));
  }
}
