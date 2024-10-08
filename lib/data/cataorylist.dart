import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';

class Categoryclass {
  String name;
  String imagepath;

  Categoryclass(this.name, this.imagepath);
}

class CataoryOption extends StatelessWidget {
  const CataoryOption(
      {super.key, required this.label, required this.imagepath});
  final String imagepath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: lightbrownColor,
          foregroundColor: brownColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(imagepath),
          ),
        ),
        Text(label),
      ],
    );
  }
}
