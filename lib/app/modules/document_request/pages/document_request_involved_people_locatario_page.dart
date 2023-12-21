import 'package:advogadox/app/modules/document_request/controllers/document_request_involved_people_locatario_page_store.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:advogadox/app/shared/my_colors.dart';
import 'package:advogadox/app/shared/widgets/button.dart';
import 'package:advogadox/app/shared/widgets/texts/h1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DocumentRequestInvolvePeopleLocatarioPage extends StatefulWidget {
  const DocumentRequestInvolvePeopleLocatarioPage({Key? key}) : super(key: key);

  @override
  _DocumentRequestInvolvePeopleLocatarioPageState createState() =>
      _DocumentRequestInvolvePeopleLocatarioPageState();
}

class _DocumentRequestInvolvePeopleLocatarioPageState extends ModularState<
    DocumentRequestInvolvePeopleLocatarioPage,
    DocumentRequestInvolvedPeopleLocatarioStorePage> {
  @override
  void initState() {
    controller.updatePersonLocatario();
    super.initState();
  }

  var nome = TextEditingController();
  var cpf = TextEditingController();

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (Modular.get<DocumentRequestModel>()
                      .involvedPeople?[1]
                      .involvedType ==
                  "LOCATARIO")
                H1(
                  content: "Locatário",
                  isBold: false,
                ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nome,
                      decoration: InputDecoration(
                        labelText: "Nome",
                      ),
                    ),
                    TextFormField(
                      controller: cpf,
                      decoration: InputDecoration(
                        labelText: "CPF",
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await controller.updatePersonLocatario(
                      cpf: "${cpf.text}", nome: "${nome.text}");
                },
                child: MyButton("Finalizar"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
