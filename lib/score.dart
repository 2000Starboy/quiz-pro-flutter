import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final VoidCallback onReset;

  const Score({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.onReset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double percentage = (score / totalQuestions) * 100;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Vous avez obtenu ${percentage.toStringAsFixed(0)}%',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Vous avez répondu correctement à $score questions sur $totalQuestions !',
            style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            icon: const Icon(Icons.refresh),
            label: const Text('Redémarrer le Quiz'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: onReset,
          ),
        ],
      ),
    );
  }
}
