import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'score.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  final _quizData = const [
    {
      'question':
          'Quel est le bloc de construction principal d\'une application Flutter ?',
      'answers': [
        {'text': 'Widgets', 'correct': true},
        {'text': 'Composants', 'correct': false},
        {'text': 'Blocs', 'correct': false},
        {'text': 'Éléments', 'correct': false},
      ],
    },
    {
      'question':
          'Quel langage de programmation est utilisé pour écrire des applications Flutter ?',
      'answers': [
        {'text': 'Kotlin', 'correct': false},
        {'text': 'Swift', 'correct': false},
        {'text': 'Dart', 'correct': true},
        {'text': 'Java', 'correct': false},
      ],
    },
    {
      'question': 'Un widget qui peut changer avec le temps est appelé un... ?',
      'answers': [
        {'text': 'Widget Sans État', 'correct': false},
        {'text': 'Widget Avec État', 'correct': true},
        {'text': 'Widget Immuable', 'correct': false},
      ],
    },
  ];

  void _handleAnswer(bool isCorrect) {
    if (isCorrect) {
      _score++;
    }
    setState(() {
      _currentQuestionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_currentQuestionIndex >= _quizData.length)
        ? Score(
            score: _score,
            totalQuestions: _quizData.length,
            onReset: _resetQuiz,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Question(
                questionText:
                    _quizData[_currentQuestionIndex]['question'] as String,
                currentIndex: _currentQuestionIndex,
                totalQuestions: _quizData.length,
              ),
              ...(_quizData[_currentQuestionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) {
                    return Answer(
                      answerText: answer['text'] as String,
                      onPressed: () => _handleAnswer(answer['correct'] as bool),
                    );
                  }), //.toList(),
            ],
          );
  }
}
