import 'package:flutter/material.dart';

class QuestionsSummery extends StatelessWidget {
  const QuestionsSummery(this.summeryData, {super.key});

  final List<Map<String, Object>> summeryData;

  @override
  Widget build(context) {
    return Column(
      children: summeryData.map((data) {
        return Row(
          children: [
            Text(
              ((data['questions_index'] as int) + 1).toString(),
            ),
          Expand (
             Child:Column(
              children: [
                Text(data['question'] as String),
                const SizedBox(height: 5),
                Text(data['user_answers'] as String),
                Text(data['correct_answers'] as String),
              ],
            ),
          )     
          ],
        );
      }).toList(),
    );
  }
}

