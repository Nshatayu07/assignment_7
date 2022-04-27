import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
ResultCard({required this.colour, required this.text});
  String text = '';
  Color colour = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text),
      color: colour,
    );
  }
}


