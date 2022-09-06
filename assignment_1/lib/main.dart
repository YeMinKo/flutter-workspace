import 'package:assignment_1/text_control.dart';
import 'package:assignment_1/text_holder.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const AssignmentOne());
}

class AssignmentOne extends StatefulWidget {
  const AssignmentOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AssignmentOneState();
  }
}

class _AssignmentOneState extends State<AssignmentOne> {
  String _text = 'Flutter is awesome!';

  void _changeText() {
    setState(() {
      _text = 'Dart is awesome too!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment One'),
        ),
        body: Center(
          child: Column(
            children: [
              TextHolder(_text),
              TextControl(_changeText),
            ],
          ),
        ),
      ),
    );
  }
}
