import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key, required this.text});

  final String text; // final meant that "text" will be set only once

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 28,
      ),
    );
  }
}
