import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton(
      {super.key, required this.answersText, required this.onTap});

  final String answersText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          backgroundColor: const Color.fromARGB(255, 35, 0, 95),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          )),
      child: Text(answersText),
    );
  }
}
