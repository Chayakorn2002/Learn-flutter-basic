import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LatoText extends StatelessWidget {
  const LatoText({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.textAlign,
  });

  const LatoText.header({
    super.key,
    required this.text,
    required this.color,
  })  : fontSize = 24,
        fontWeight = FontWeight.bold,
        textAlign = TextAlign.center;

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.lato(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
