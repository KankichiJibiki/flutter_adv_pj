import 'package:flutter/material.dart';

class QuizStarter extends StatelessWidget {
  const QuizStarter({super.key});

  startQuiz() {
    print('start quiz');
  }

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
            color: const Color.fromARGB(255, 210, 77, 225),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          onPressed: () {},
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
