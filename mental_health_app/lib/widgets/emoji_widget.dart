import 'package:flutter/material.dart';
import 'package:mental_health_app/utils/emoticon_face.dart';

class EmojiWidget extends StatelessWidget {
  final String emoticonFace;
  final String text;

  const EmojiWidget({
    super.key,
    required this.emoticonFace,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmoticonFace(
          emoticonFace: emoticonFace,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
