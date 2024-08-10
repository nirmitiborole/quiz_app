import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(204, 231, 103, 199),
          ),
          const SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 52, 7, 91),
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 65, 86, 219),
              textStyle: const TextStyle(
                fontSize: 17,
              ),
            ),
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
