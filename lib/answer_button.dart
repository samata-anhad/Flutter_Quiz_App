import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.ansText, required this.onTap});

  final String ansText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding:EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 204, 0, 255),
        foregroundColor: Colors.white,
        shape:RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(40))
      ),
      child: Text(ansText),
    );
  }
}
