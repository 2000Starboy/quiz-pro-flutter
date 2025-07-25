import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int currentIndex;
  final int totalQuestions;

  const Question({
    Key? key,
    required this.questionText,
    required this.currentIndex,
    required this.totalQuestions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Question ${currentIndex + 1}/$totalQuestions',
            style: const TextStyle(fontSize: 20, color: Colors.blueGrey),
          ),
          const SizedBox(height: 10),
          Text(
            questionText,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
