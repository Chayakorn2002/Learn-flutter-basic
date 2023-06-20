import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi, Jared!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              // style:
              // Theme.of(context).textTheme.titleMedium?.copyWith(
              //     color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 5),
            Text(
              DateFormat.yMMMd().format(DateTime.now()),
              style: TextStyle(color: Colors.blue[200]),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
          child: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
