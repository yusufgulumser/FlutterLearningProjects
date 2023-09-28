import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAns, required this.questionIndex});
  final int questionIndex;
  final bool isCorrectAns;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAns
              ? const Color.fromARGB(255, 3, 52, 92)
              : const Color.fromARGB(255, 148, 7, 113),
          borderRadius: BorderRadius.circular(100)),
      child: Text(questionNumber.toString(),
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 34, 1, 91))),
    );
  }
}
