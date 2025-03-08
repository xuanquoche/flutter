import 'package:flutter/material.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Map<String, dynamic>> questions = [
    {'question': 'Flutter is developed by Google.', 'answer': true},
    {
      'question': 'Dart is the programming language used in Flutter.',
      'answer': true
    },
    {
      'question': 'Flutter can only be used for mobile app development.',
      'answer': false
    },
  ];

  int questionIndex = 0;
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userAnswer) {
    bool correctAnswer = questions[questionIndex]['answer'];

    setState(() {
      if (userAnswer == correctAnswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.close, color: Colors.red));
      }

      if (questionIndex < questions.length - 1) {
        questionIndex++;
      } else {
        _showResultDialog();
      }
    });
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Quiz Finished!'),
          content: Text('You have completed the quiz.'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  questionIndex = 0;
                  scoreKeeper.clear();
                });
                Navigator.of(context).pop();
              },
              child: Text('Restart'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  questions[questionIndex]['question'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () => checkAnswer(true),
                child: const Text('True', style: TextStyle(fontSize: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () => checkAnswer(false),
                child: const Text('False', style: TextStyle(fontSize: 18)),
              ),
            ),
            Row(
              children: scoreKeeper,
            ),
          ],
        ),
      ),
    );
  }
}
