import 'package:advogadox/app/shared/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H1 extends StatelessWidget {
  const H1({
    Key? key,
    required this.content,
    this.isBold = true,
    this.color = Colors.black,
  }) : super(key: key);

  final String content;
  final bool isBold;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(content,
        textDirection: TextDirection.ltr,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w300,
          color: color,
          fontSize: 36,
        )));
  }
}
