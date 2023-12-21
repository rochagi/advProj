import 'package:advogadox/app/shared/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'number_row_footer_walkthrough.dart';

class RowFooterWalkthrough extends StatefulWidget {
  bool isFirstPage;
  bool isSecondPage;
  bool isThirdPage;
  Function()? function;

  RowFooterWalkthrough(
      {this.isFirstPage = false,
      this.isSecondPage = false,
      this.isThirdPage = false,
      this.function});

  @override
  State<RowFooterWalkthrough> createState() => _RowFooterWalkthroughState();
}

class _RowFooterWalkthroughState extends State<RowFooterWalkthrough> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: MyColors.blue,
          height: 1,
          width: size.width * 0.8,
        ),
        Container(
          width: size.width * 0.9,
          height: size.height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Modular.to.navigate('/'),
                        child: NumberRowFooterWalkthrough(
                          number: "1",
                          color: widget.isFirstPage
                              ? MyColors.blue
                              : MyColors.lightGray,
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Modular.to.navigate('/walkthroughSecondPage'),
                        child: NumberRowFooterWalkthrough(
                          number: "2",
                          color: widget.isSecondPage
                              ? MyColors.blue
                              : MyColors.lightGray,
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Modular.to.navigate('/walkthroughThirdPage'),
                        child: NumberRowFooterWalkthrough(
                          number: "3",
                          color: widget.isThirdPage
                              ? MyColors.blue
                              : MyColors.lightGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: widget.function,
                child: Icon(
                  Icons.arrow_forward,
                  color: MyColors.blue,
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
