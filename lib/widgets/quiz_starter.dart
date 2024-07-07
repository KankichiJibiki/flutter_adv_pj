import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizStarter extends StatelessWidget {
  const QuizStarter(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.4,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Learn Flutter the fun way',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
