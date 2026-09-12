import 'package:flutter/material.dart';
import 'package:test_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummery() {
    List<Map<String, Object>> summery = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summery.add({
        'questions_index': i,
        'quiestion': questions[i].text,
        'correct_answers': questions[i].answers[0],
        'user_answers': choosenAnswer[i],
      });
    }
    return summery;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You Answerd X Out Of Y Answers Correctly'),
            SizedBox(height: 30),
            const Text('List Of Answers and Questions'),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}

extension on List<int> {
  get answers => null;
}
