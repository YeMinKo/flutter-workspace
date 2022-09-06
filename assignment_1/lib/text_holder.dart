import 'package:flutter/material.dart';

class TextHolder extends StatelessWidget {
  final String text;

  const TextHolder(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
