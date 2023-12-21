import 'package:advogadox/app/shared/my_colors.dart';
import 'package:flutter/material.dart';

class TitleWalkthrough extends StatelessWidget {
  String content;

  TitleWalkthrough({required this.content});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.9,
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          color: MyColors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
