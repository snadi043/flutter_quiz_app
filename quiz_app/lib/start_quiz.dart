import 'package:flutter/material.dart';

class StartQuiz extends StatefulWidget {
  const StartQuiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _StartQuiz();
  }
}

class _StartQuiz extends State<StartQuiz> {
  // var greetings = 'Hello world';

  void quizStart() {
    print('Button clicked');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(115, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        const Text(
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            'Learn Flutter the fun way.'),
        const SizedBox(height: 40),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.amberAccent,
              textStyle: const TextStyle(fontSize: 24),
              padding: const EdgeInsets.only(
                  top: 15, bottom: 15, left: 10, right: 10)),
          onPressed: quizStart,
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    );
  }
}
