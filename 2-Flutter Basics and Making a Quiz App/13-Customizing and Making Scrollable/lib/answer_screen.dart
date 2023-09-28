import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/summary/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});
  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestionNum = questions.length;

    ///The 'where' method filters elements in a collection based on a condition, creating a new collection with matching elements.
    final totalCorrectNum = summaryData.where((data) {
      /// if this equality is correct it returns true if not returns false.
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $totalQuestionNum questions out of $totalCorrectNum questions correctly!'),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(
                onPressed: onRestart, child: const Text('Restart the quiz!'))
          ],
        ),
      ),
    );
  }
}
