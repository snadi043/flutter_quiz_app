import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(115, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          Text(
              style: GoogleFonts.lato(
                fontSize: 18,
                color: Colors.white,
              ),
              'Learn Flutter the fun way.'),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 252, 252, 252),
                textStyle: const TextStyle(fontSize: 18),
                side: const BorderSide(color: Colors.transparent),
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 10, right: 10)),
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
