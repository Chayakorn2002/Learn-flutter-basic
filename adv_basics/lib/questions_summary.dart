import 'package:adv_basics/lato_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Container(
                decoration: const BoxDecoration(
                  border: Border.fromBorderSide(
                    BorderSide(
                      width: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 75,
                      decoration: BoxDecoration(
                        border: Border.fromBorderSide(
                          BorderSide(
                            width: 1,
                            color:
                                (data['user_answer'] == data['correct_answer'])
                                    ? const Color.fromARGB(255, 122, 190, 246)
                                    : const Color.fromARGB(255, 255, 152, 186),
                          ),
                        ),
                        shape: BoxShape.circle,
                        color: (data['user_answer'] == data['correct_answer'])
                            ? const Color.fromARGB(255, 122, 190, 246)
                            : const Color.fromARGB(255, 255, 152, 186),
                      ),
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(((data['question_index'] as int) + 1).toString(),
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          border: Border.fromBorderSide(
                            BorderSide(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            LatoText(
                                text: data['question_text'] as String,
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.start),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Column(
                                children: [
                                  LatoText(
                                      text: data['user_answer'] as String,
                                      color: const Color.fromARGB(
                                          255, 235, 176, 196),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.start),
                                  LatoText(
                                      text: data['correct_answer'] as String,
                                      color: const Color.fromARGB(
                                          255, 187, 224, 255),
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.start),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
