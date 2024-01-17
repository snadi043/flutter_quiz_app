import 'package:flutter/material.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/answers_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((item) {
            return AnswersButton(answersText: item, onTap: () {});
          }),
          // AnswersButton(answersText: currentQuestion.answers[0], onTap: () {}),
          // AnswersButton(answersText: currentQuestion.answers[1], onTap: () {}),
          // AnswersButton(answersText: currentQuestion.answers[2], onTap: () {}),
          // AnswersButton(answersText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
