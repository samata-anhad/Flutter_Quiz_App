import 'package:flutter/material.dart';
import 'package:test_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 126, 0, 140),
                Color.fromARGB(255, 43, 0, 47),
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
} 
