import 'package:advogadox/app/modules/document_request/controllers/document_request_involved_person_segundo_locatario_contrato_locacao_store.dart';
import 'package:advogadox/app/shared/my_colors.dart';
import 'package:advogadox/app/shared/widgets/button.dart';
import 'package:advogadox/app/shared/widgets/texts/h1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPage
    extends StatefulWidget {
  const DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPage(
      {Key? key})
      : super(key: key);

  @override
  _DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPageState
      createState() =>
          _DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPageState();
}

class _DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPageState
    extends ModularState<
        DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPage,
        DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStore> {
  @override
  void initState() {
    controller.updateSegundoLocatarioContratoLocacao();
    super.initState();
  }

  var dataExpedicao = TextEditingController();
  var naturalidade = TextEditingController();
  var numeroCpf = TextEditingController();
  var registroGeral = TextEditingController();
  var uf = TextEditingController();
  var nome = TextEditingController();

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
            H1(
              content: "Segundo Locador",
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
                    controller: numeroCpf,
                    decoration: InputDecoration(
                      labelText: "CPF",
                    ),
                  ),
                  TextFormField(
                    controller: registroGeral,
                    decoration: InputDecoration(
                      labelText: "RG",
                    ),
                  ),
                  TextFormField(
                    controller: dataExpedicao,
                    decoration: InputDecoration(
                      labelText: "Data de Expedição",
                    ),
                  ),
                  TextFormField(
                    controller: naturalidade,
                    decoration: InputDecoration(
                      labelText: "Naturalidade",
                    ),
                  ),
                  TextFormField(
                    controller: uf,
                    decoration: InputDecoration(
                      labelText: "Estado",
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                await controller.updateSegundoLocatarioContratoLocacao(
                  dataExpedicao: "${dataExpedicao.text}",
                  naturalidade: "${naturalidade.text}",
                  nome: "${nome.text}",
                  numeroCpf: "${numeroCpf.text}",
                  registroGeral: "${registroGeral.text}",
                  uf: "${uf.text}",
                );
                Modular.to.pushNamed(
                    "/documentRequestInvolvedPersonFiadorContratoLocacaoPage");
              },
              child: MyButton("continuar"),
            )
          ],
        ),
      ),
    );
  }
}
