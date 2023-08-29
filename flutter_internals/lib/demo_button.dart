import 'package:flutter/material.dart';

class DemonButton extends StatefulWidget {
  const DemonButton({super.key});

  @override
  State<DemonButton> createState() => _DemonButtonState();
}

class _DemonButtonState extends State<DemonButton> {
  var _isUnderstood = false;

  @override
  Widget build(BuildContext context) {
    print('DemonButton BUILD called');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (_isUnderstood) const Text('Awesome!'),
      ],
    );
  }
}
