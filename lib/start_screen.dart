import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/megaphone-label-set-with-text-quiz-time-quiz-time-announcement-banner-png.png',
            width: 300,
            // color:const Color.fromARGB(80, 255, 217, 217),
          ),
          const SizedBox(height: 20),
          const Text(
            "Lets Leran Flutter In A Fun Way",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 247, 222),
            ),
            icon: const Icon(Icons.arrow_back),
            label: const Text('start the quiz'),
          ),
        ],
      ),
    );
  }
}
