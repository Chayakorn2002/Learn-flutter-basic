import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/lato_text.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:adv_basics/styled_elevated_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.onRestartQuiz});

  final List<String> chosenAnswer;
  final void Function() onRestartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question_text': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
      if (chosenAnswer[i] == questions[i].answers[0]) {}
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectAnswer = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        // padding: const EdgeInsets.all(10),
        child: Container(
          decoration: const BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(
                width: 1,
                color: Colors.white,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LatoText.header(
                text:
                    'You answer $numCorrectAnswer out of $numTotalQuestion questions correctly!',
                color: const Color.fromARGB(255, 255, 220, 232),
              ),
              const SizedBox(
                height: 50,
              ),
              QuestionsSummary(summaryData: getSummaryData()),
              const SizedBox(
                height: 50,
              ),
              StyledElevatedButton.purple(
                  text: 'Restart Quiz!',
                  iconData: Icons.restart_alt,
                  buttonFunction: onRestartQuiz)
              // ElevatedButton(
              //   onPressed: onRestartQuiz,
              //   style: ,
              //   child: const Text('Restart Quiz!'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
