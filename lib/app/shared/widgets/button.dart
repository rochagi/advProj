import 'package:advogadox/app/shared/my_colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String content;

  MyButton(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: MyColors.main,
      ),
      child: Center(
        child: Text(
          content,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
