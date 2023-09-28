import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';
import 'package:second_app/data/questions.dart';

class Question extends StatefulWidget {
  const Question({super.key});
  @override
  State<Question> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<Question> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          AnswerButton(answerText: currentQuestion.answers[0], tapped: () {}),
          AnswerButton(answerText: currentQuestion.answers[1], tapped: () {}),
          AnswerButton(answerText: currentQuestion.answers[2], tapped: () {}),
          AnswerButton(answerText: currentQuestion.answers[3], tapped: () {})
        ],
      ),
    );
  }
}
