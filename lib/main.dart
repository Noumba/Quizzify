import 'package:flutter/material.dart';
import 'package:quizzify/home_page_navigator.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[
                Color.fromARGB(255, 79, 16, 148),
                Color.fromARGB(255, 67, 17, 133)
              ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.mirror)),
          child: const HomePageNavigator()),
    ),
  ));
}
