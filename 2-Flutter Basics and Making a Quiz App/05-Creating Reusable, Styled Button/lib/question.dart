import 'package:flutter/material.dart';
import 'package:second_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,    /// for centering 
        children: [
          const Text('Question',style: TextStyle(color: Colors.white),),
          const SizedBox(
            width: double.infinity,                      /// for centering
            height: 30,
          ),
          AnswerButton(answerText:'Answer text', tapped: (){}),
          AnswerButton(answerText: 'Answer text',tapped:  (){}),
          AnswerButton(answerText: 'Answer text',tapped:  (){})
        ],
      ),
    );
  }
}
