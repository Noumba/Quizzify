import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xC5F9F9F9),
            wordSpacing: 3.0,
            letterSpacing: 1.3,
            fontStyle: FontStyle.italic,
            decorationThickness: 5.0));
  }
}
