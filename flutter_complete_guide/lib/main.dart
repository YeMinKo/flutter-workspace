import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print("Answer 2 choosen!"),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  // do something (multi lines anonymous function)
                  print('Answer 3 choosen!');
                },
              ),
            ],
          )),
    );
  }
}
