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
      child: Container(
        /// adds spacing everywhere
        margin: const EdgeInsets.all(40),       

        child: Column(
          ///vertical
          mainAxisAlignment: MainAxisAlignment.center
          ///horizontal
          crossAxisAlignment: CrossAxisAlignment.stretch,



          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              /// centering the text
              textAlign: TextAlign.center,
              
            ),
            const SizedBox(height: 30),

            /// 'map' iterates over each element in the list and applies the provided function to each element
            ...currentQuestion.answers.map((answer) {
              /// children only acccept widgets. But this is not widget. '...' pulls out the elements so this wont be list anymore.

              return AnswerButton(answerText: answer, tapped: () {});
            })
          ],
        ),
      ),
    );
  }
}
