import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  // const List<Color> colors = [
  //   Colors.black,
  //   Colors.white,
  //   Colors.blue,
  // ];

  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.cyan(),
      ),
    ),
  );
}
