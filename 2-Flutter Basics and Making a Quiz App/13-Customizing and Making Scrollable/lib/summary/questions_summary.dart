import 'package:flutter/material.dart';
import 'package:second_app/summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      /// it will overflow so we should add another widget
      height: 400,

      /// the 'SingleChildScrollView' widget will make the child scrollable. So it wont overflow
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
