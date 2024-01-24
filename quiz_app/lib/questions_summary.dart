import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.dataSummary, {super.key});
  final List<Map<String, Object>> dataSummary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: dataSummary.map((data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Align(
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 233, 105, 255),
                  radius: 15,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                      backgroundColor: const Color.fromARGB(194, 232, 103, 221),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['chosen_user_answer'] as String,
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 147, 157, 208),
                      ),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 75, 124, 236),
                      ),
                    ),
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
