// import 'package:adv_basics/styled_elevated_button.dart';
// import 'package:adv_basics/styled_text.dart';
// import 'package:flutter/material.dart';

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({
//     super.key,
//     required this.color1,
//     required this.color2,
//   });

//   const GradientContainer.purple({super.key})
//       : color1 = const Color.fromARGB(255, 92, 35, 249),
//         color2 = const Color.fromARGB(255, 150, 122, 226);

//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [color1, color2],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               'assets/images/quiz-logo.png',
//               width: 300,
//               color: const Color.fromARGB(150, 255, 255, 255),
//             ),
//             const SizedBox(
//               height: 80,
//             ),
//             const StyledText.main(text: 'Learn Flutter the fun way!'),
//             const SizedBox(
//               height: 30,
//             ),
//             const StyledElevatedButton.purple(
//               text: 'Start Quiz',
//               iconData: Icons.arrow_right_alt,
//               buttonFunction: ,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
