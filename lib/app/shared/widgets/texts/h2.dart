import 'package:advogadox/app/shared/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H2 extends StatelessWidget {
  final String content;
  final bool isBold;

  const H2({required this.content, this.isBold = true});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textDirection: TextDirection.ltr,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 28,
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w300,
          color: MyColors.gray,
        ),
      ),
    );
  }
}
