import 'package:flutter/material.dart';

class NumberRowFooterWalkthrough extends StatelessWidget {
  String number;
  Color color;

  NumberRowFooterWalkthrough({required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        number,
        style:
            TextStyle(color: color, fontSize: 33, fontWeight: FontWeight.bold),
      ),
    );
  }
}
