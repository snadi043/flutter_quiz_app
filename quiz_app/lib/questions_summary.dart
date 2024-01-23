import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.dataSummary, {super.key});
  final List<Map<String, Object>> dataSummary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: dataSummary.map((data) {
            return Row(children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 5),
                    Text(data['chosen_user_answer'] as String),
                    Text(data['correct_answer'] as String)
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
