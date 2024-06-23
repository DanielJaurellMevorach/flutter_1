import 'package:dribble/pages/mood.dart';
import 'package:flutter/material.dart';

class MoodCard extends StatelessWidget {
  final Mood mood;

  MoodCard({required this.mood});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 67, 145, 205),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child: Text(
              mood.emoji,
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Text(
          mood.mood,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
