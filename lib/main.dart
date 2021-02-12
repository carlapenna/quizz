import 'package:flutter/material.dart';
import 'package:quizz/initial_screen.dart';

void main() {
  runApp(Quizz());
}

class Quizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(),
    );
  }
}