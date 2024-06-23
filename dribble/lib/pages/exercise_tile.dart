import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exercise;
  final String subtitle;
  final Icon icon;
  final Color iconColor;
  final Color iconBackground;

  const ExerciseTile(
      {super.key,
      required this.exercise,
      required this.subtitle,
      required this.icon,
      required this.iconColor,
      required this.iconBackground});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon.icon, color: iconColor),
            )),
        title: Text(
          exercise,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle
              .split(" ")
              .map((word) => word[0].toUpperCase() + word.substring(1))
              .join(" "),
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        trailing: Icon(Icons.more_horiz),
      ),
    );
  }
}
