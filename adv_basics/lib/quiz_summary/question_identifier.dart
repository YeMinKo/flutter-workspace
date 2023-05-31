import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final Color blueColor;
  final Color pupleColor;
  final bool isCorrect;
  final int index;

  const QuestionIdentifier({
    super.key,
    required this.blueColor,
    required this.pupleColor,
    required this.isCorrect,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        right: 20,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrect ? blueColor : pupleColor,
      ),
      child: Text((index + 1).toString()),
    );
  }
}
