import 'package:advogadox/app/shared/my_colors.dart';
import 'package:flutter/material.dart';

class RowJumpWalkthrough extends StatelessWidget {
  const RowJumpWalkthrough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.13,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              "Pular",
              style: TextStyle(
                color: MyColors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 19,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
