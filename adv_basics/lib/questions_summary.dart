import 'package:flutter/material.dart';

const pupleColor = Color.fromARGB(255, 219, 101, 240);
const blueColor = Color.fromARGB(255, 76, 182, 239);

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              String userAnswer = data['user_answer'] as String;
              String correctAnswer = data['correct_answer'] as String;
              bool isCorrect = userAnswer == correctAnswer;

              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isCorrect ? blueColor : pupleColor,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
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
            },
          ).toList(),
        ),
      ),
    );
  }
}
