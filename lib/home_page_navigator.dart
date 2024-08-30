import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzify/Screens/home_screen.dart';
import 'package:quizzify/Screens/question_screen.dart';

class HomePageNavigator extends StatefulWidget {
  const HomePageNavigator({super.key});

  @override
  State<HomePageNavigator> createState() => _HomePageNavigatorState();
}

class _HomePageNavigatorState extends State<HomePageNavigator> {
  Widget? activeScreen;

  @override
  void initState() {
    // TODO: implement initState
    activeScreen = HomeScreen(updateScreen: updateScreen);
    super.initState();
  }

  void updateScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Center(child: activeScreen);
  }
}
