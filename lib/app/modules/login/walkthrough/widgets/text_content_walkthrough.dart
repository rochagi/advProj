import 'package:flutter/material.dart';

class TextContentWalkthrough extends StatelessWidget {
  String content;

  TextContentWalkthrough({required this.content});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.9,
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
