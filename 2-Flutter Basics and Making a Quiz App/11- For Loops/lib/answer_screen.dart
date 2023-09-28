import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    /// Initialization: var i = 0 - Starting with an index or variable i set to 0.
    /// Condition: i < chosenAnswers.length - The loop continues as long as i is less than the length of the chosenAnswers list.
    /// Increment: i++ - After each iteration, i is increased by 1 to move to the next element in the list.
    for (var i = 0; i < chosenAnswers.length; i++) {
      /// we are using {} for creating a map value in add function
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'You answered X questions out of Y questions correctly!'),
            const SizedBox(height: 30),
            const Text('List'),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text('Restart the quiz!'))
          ],
        ),
      ),
    );
  }
}
