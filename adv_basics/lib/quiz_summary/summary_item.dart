import 'package:adv_basics/quiz_summary/question_identifier.dart';
import 'package:flutter/material.dart';

const pupleColor = Color.fromARGB(255, 219, 101, 240);
const blueColor = Color.fromARGB(255, 76, 182, 239);

class SummaryItem extends StatelessWidget {
  final Map<String, Object> data;

  const SummaryItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    int questionIndex = data['question_index'] as int;
    String question = data['question'] as String;
    String userAnswer = data['user_answer'] as String;
    String correctAnswer = data['correct_answer'] as String;

    bool isCorrect = userAnswer == correctAnswer;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            pupleColor: pupleColor,
            blueColor: blueColor,
            isCorrect: isCorrect,
            index: questionIndex,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 5),
                Text(
                  userAnswer,
                  style: const TextStyle(
                    color: pupleColor,
                  ),
                ),
                Text(
                  correctAnswer,
                  style: const TextStyle(
                    color: blueColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
