import 'package:flutter/material.dart';
import 'package:quizzify/Widgets/custom_outlined_button.dart';
import 'package:quizzify/Widgets/custom_text_widget.dart';

import '../test_data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var questionId = 0;
  var isSelectedTile = false;

  void markSelectedTile() {
    isSelectedTile = isSelectedTile ? !isSelectedTile : isSelectedTile;
    print(isSelectedTile);
    setState(() {
      isSelectedTile = !isSelectedTile;
    });
    print('clicked answer tile');
    print(isSelectedTile);
  }

  void nextQuestion() {
    setState(() {
      questionId += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final currentQuestion = questions[questionId];
    final totalQuestions = questions.length;

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomTextWidget(text: 'Question ${questionId + 1}/$totalQuestions'),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          alignment: Alignment.center,
          width: screenWidth * 0.85,
          height: screenHeight * 0.3,
          decoration: BoxDecoration(
              color: const Color(0xD5FFFFFF),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                    spreadRadius: 7.0,
                    color: Color(
                      0x9B5153DE,
                    ),
                    offset: Offset(0.0, 0.0))
              ]),
          child: Text(
            currentQuestion.question,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.05,
        ),
        Flexible(
            child: ListView(
          shrinkWrap: true,
          children: [
            ...currentQuestion.answers.map((answer) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                color: Colors.white.withOpacity(0.1),
                child: ListTile(
                  selected: isSelectedTile,
                  leading: const Icon(Icons.question_mark),
                  title: Center(child: Text(answer)),
                  trailing: const Icon(Icons.check_box_outline_blank),
                  onTap: () {
                    markSelectedTile();
                  },
                  tileColor: Colors.white,
                  iconColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0))),
                  titleTextStyle: const TextStyle(color: Colors.white),
                  dense: true,
                  autofocus: true,
                  titleAlignment: ListTileTitleAlignment.center,
                ),
              );
            }), //
          ],
        )),
        SizedBox(
          height: screenHeight * 0.025,
        ),
        CustomOutlinedIconButton(
            buttonLabel: 'NEXT', updateScreen: nextQuestion),
      ],
    );
  }
}
