import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Color.fromARGB(255, 209, 66, 234),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
              ),
              const Text(
                'Learn Flutter the fun way',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Start Quiz"),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
