import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          /// Row widget is horizontal equivalent to the column widget
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),

              ///Expanded ensures that the Column takes up all available vertical space in the Row, preventing text overflow.
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
