import 'package:flutter/material.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'chosen_user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  final void Function() onRestart;

  @override
  Widget build(context) {
    final totalQuestions = questions.length;
    final summaryData = getSummary();
    final numberOfCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['chosen_user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numberOfCorrectQuestions out of $totalQuestions questons correctly',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 213, 213),
                // fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 18),
                    side: const BorderSide(color: Colors.transparent),
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 10, right: 10)),
                onPressed: onRestart,
                label: const Text('Restart Quiz!'),
                icon: const Icon(Icons.refresh_rounded)),
          ],
        ),
      ),
    );
  }
}
