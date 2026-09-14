import 'package:flutter/material.dart';
import 'package:test_app/data/questions.dart';
import 'package:test_app/questions_summery.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummery() {
    List<Map<String, Object>> summery = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summery.add({
        'questions_index': i,
        'question': questions[i].text,
        'correct_answers': questions[i].answers[0],
        'user_answers': choosenAnswer[i],
      });
    }
    return summery;
  }

  @override
  Widget build(context) {
    final summeryData = getSummery();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =summeryData.where((data){
        return data['user_answers']== data['correct_answers'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You Answered $numCorrectQuestions Out Of  $numTotalQuestions questions Correctly'),

            const SizedBox(height: 30),

            const Text('List Of Answers and Questions'),

            const SizedBox(height: 30),

            QuestionsSummery(summeryData),

            const SizedBox(height: 30),

            TextButton(onPressed: () {}, child: const Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
