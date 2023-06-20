import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/lato_text.dart';
import 'package:adv_basics/models/quiz_question.dart';
import 'package:flutter/material.dart';
import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    setState(() {
      widget.onSelectAnswer(selectedAnswer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          border: const Border.fromBorderSide(
            BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 165, 141, 206),
              Color.fromARGB(255, 237, 240, 210),
            ],
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 180),
        child: Container(
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.symmetric(
            vertical: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LatoText.header(
                text: currentQuestion.question,
                color: Colors.white,
              ),
              const SizedBox(
                height: 50,
              ),
              ...currentQuestion.getShuffledAnswers().map(
                (answerText) {
                  return AnswerButton(
                    answerText: answerText,
                    onTap: () {
                      answerQuestion(answerText);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
