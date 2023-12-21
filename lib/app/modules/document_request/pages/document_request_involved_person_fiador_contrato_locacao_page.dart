import 'package:advogadox/app/shared/my_colors.dart';
import 'package:flutter/material.dart';

class DocumentRequestInvolvedPersonFiadorContratoLocacaoPage
    extends StatefulWidget {
  const DocumentRequestInvolvedPersonFiadorContratoLocacaoPage({Key? key})
      : super(key: key);

  @override
  _DocumentRequestInvolvedPersonFiadorContratoLocacaoPageState createState() =>
      _DocumentRequestInvolvedPersonFiadorContratoLocacaoPageState();
}

class _DocumentRequestInvolvedPersonFiadorContratoLocacaoPageState
    extends State<DocumentRequestInvolvedPersonFiadorContratoLocacaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: MyColors.main,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
