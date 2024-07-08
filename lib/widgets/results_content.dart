import 'package:flutter/material.dart';

class ResultsContent extends StatefulWidget {
  const ResultsContent({required this.quizResults, super.key});

  final Map<String, Object> quizResults;

  @override
  State<ResultsContent> createState() => _ResultsContentState();
}

class _ResultsContentState extends State<ResultsContent> {
  @override
  Widget build(context) {
    bool isCorrect = widget.quizResults['user_answer'] ==
        widget.quizResults['correct_answer'];
    Color? indexColor = Colors.red[400];
    if (isCorrect) {
      indexColor = Colors.teal[200];
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: indexColor,
          ),
          child: Text(
            ((widget.quizResults['question_index'] as int) + 1).toString(),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.quizResults['question'] as String,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.quizResults['user_answer'] as String,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.purple[300]),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.quizResults['correct_answer'] as String,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.tealAccent[200]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
