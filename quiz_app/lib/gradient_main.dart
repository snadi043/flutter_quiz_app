import 'package:flutter/material.dart';
import 'package:quiz_app/start_quiz.dart';

const color1 = Color.fromARGB(255, 45, 0, 122);
const color2 = Color.fromARGB(255, 8, 0, 32);

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientMain extends StatelessWidget {
  const GradientMain({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: beginAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: const Center(
        child: StartQuiz(),
      ),
    );
  }
}
