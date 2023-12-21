import 'package:advogadox/app/modules/document_request/controllers/document_request_involved_people_page_store.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:advogadox/app/shared/my_colors.dart';
import 'package:advogadox/app/shared/widgets/button.dart';
import 'package:advogadox/app/shared/widgets/texts/h1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DocumentRequestInvolvedPeoplePage extends StatefulWidget {
  const DocumentRequestInvolvedPeoplePage({Key? key}) : super(key: key);

  @override
  _DocumentRequestInvolvedPeoplePageState createState() =>
      _DocumentRequestInvolvedPeoplePageState();
}

class _DocumentRequestInvolvedPeoplePageState extends ModularState<
    DocumentRequestInvolvedPeoplePage, DocumentRequestInvolvedPeoplePageStore> {
  @override
  void initState() {
    controller.updatePerson();
    super.initState();
  }

  var nome = TextEditingController();
  var cpf = TextEditingController();
  var estado = TextEditingController();
  var cidade = TextEditingController();
  var cep = TextEditingController();
  var bairro = TextEditingController();
  var logradouro = TextEditingController();
  var numero = TextEditingController();
  var complemento = TextEditingController();

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
            children: [
              if (Modular.get<DocumentRequestModel>()
                      .involvedPeople?[0]
                      .involvedType ==
                  "LOCADOR")
                H1(
                  content: "Locador",
                  isBold: false,
                ),
              Container(
                height: 550,
                child: ListView(
                  children: [
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: nome,
                              decoration: InputDecoration(
                                labelText: "nome",
                              ),
                            ),
                            TextFormField(
                              controller: cpf,
                              decoration: InputDecoration(
                                labelText: "CPF",
                              ),
                            ),
                            TextFormField(
                              controller: estado,
                              decoration: InputDecoration(
                                labelText: "Estado",
                              ),
                            ),
                            TextFormField(
                              controller: cidade,
                              decoration: InputDecoration(
                                labelText: "Cidade",
                              ),
                            ),
                            TextFormField(
                              controller: cep,
                              decoration: InputDecoration(
                                labelText: "CEP",
                              ),
                            ),
                            TextFormField(
                              controller: bairro,
                              decoration: InputDecoration(
                                labelText: "Bairro",
                              ),
                            ),
                            TextFormField(
                              controller: logradouro,
                              decoration: InputDecoration(
                                labelText: "Logradouro",
                              ),
                            ),
                            TextFormField(
                              controller: numero,
                              decoration: InputDecoration(
                                labelText: "Número",
                              ),
                            ),
                            TextFormField(
                              controller: complemento,
                              decoration: InputDecoration(
                                labelText: "Complemento",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () async {
              await controller.updatePerson(
                nome: "${nome.text}",
                cpf: "${cpf.text}",
                estado: "${estado.text}",
                cidade: "${cidade.text}",
                cep: "${cep.text}",
                bairro: "${bairro.text}",
                logradouro: "${logradouro.text}",
                numero: "${numero.text}",
                complemento: "${complemento.text}",
              );

              Modular.to
                  .pushNamed("/documentRequestInvolvedPeopleLocatarioPage");
            },
            child: MyButton("Continuar"),
          )
        ],
      ),
    );
  }
}
