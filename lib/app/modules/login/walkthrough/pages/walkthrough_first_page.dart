import 'package:advogadox/app/modules/login/walkthrough/widgets/row_footer_walkthrough.dart';
import 'package:advogadox/app/modules/login/walkthrough/widgets/row_jump_walkthrough.dart';
import 'package:advogadox/app/modules/login/walkthrough/widgets/text_content_walkthrough.dart';
import 'package:advogadox/app/modules/login/walkthrough/widgets/title_walkthrough.dart';

import 'package:flutter/material.dart';

class WalkThroughFirstPage extends StatelessWidget {
  const WalkThroughFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RowJumpWalkthrough(),
          TitleWalkthrough(content: "Lorem ipsum dolor sit amet"),
          Image.asset("assets/images/home_carroseul_03.png"),
          TextContentWalkthrough(
            content:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed condimentum erat diam, sit amet ultrices quam tempor sit amet. Duis velit risus, interdum sit amet sodales eu, egestas nec quam.",
          ),
          RowFooterWalkthrough(
            function: () {},
            isFirstPage: true,
          ),
        ],
      ),
    );
  }
}
