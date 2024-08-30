import 'package:flutter/material.dart';
import 'package:quizzify/Widgets/custom_text_widget.dart';

class CustomOutlinedIconButton extends StatelessWidget {
  const CustomOutlinedIconButton({super.key, required this.buttonLabel});
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
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
        label: CustomTextWidget(text: buttonLabel));
  }
}
