import 'package:flutter/material.dart';

class StyledElevatedButton extends StatelessWidget {
  const StyledElevatedButton(
      {super.key,
      required this.bgColor,
      required this.textColor,
      required this.fontSize,
      required this.text,
      required this.iconData,
      required this.buttonFunction});

  const StyledElevatedButton.purple({
    super.key,
    required this.text,
    required this.iconData,
    required this.buttonFunction,
  })  : bgColor = const Color.fromARGB(255, 92, 35, 249),
        textColor = Colors.white,
        fontSize = 28;

  final Color bgColor;
  final Color textColor;
  final double fontSize;
  final String text;
  final IconData iconData;
  final void Function() buttonFunction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: buttonFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: textColor,
        // textStyle: const TextStyle(
        //   fontSize: 28,
        // ),
      ),
      icon: Icon(iconData),
      label: Text(text),
    );
  }
}
