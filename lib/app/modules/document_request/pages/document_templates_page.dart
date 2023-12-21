import 'package:advogadox/app/modules/document_request/controllers/document_templates_store.dart';
import 'package:advogadox/app/modules/document_request/data_source/document_request_repository.dart';
import 'package:advogadox/app/modules/document_request/data_source/document_request_repository_impl.dart';
import 'package:advogadox/app/shared/client/custom_client.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:advogadox/app/shared/models/notifications_model.dart';
import 'package:advogadox/app/shared/my_colors.dart';
import 'package:advogadox/app/shared/widgets/button.dart';
import 'package:advogadox/app/shared/widgets/texts/h1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DocumentTemplatePage extends StatefulWidget {
  const DocumentTemplatePage({Key? key}) : super(key: key);

  @override
  _DocumentTemplatePageState createState() => _DocumentTemplatePageState();
}

class _DocumentTemplatePageState
    extends ModularState<DocumentTemplatePage, DocumentTemplatesStore> {
  @override
  void initState() {
    controller.fetchDocumentTemplates();
    super.initState();
  }

  String groupTemplate = "";

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
              H1(
                content: "Qual o Documento?",
                isBold: false,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Observer(builder: (_) {
                  return SafeArea(
                    child: controller.content.isNotEmpty
                        ? Container(
                            height: 350,
                            child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                var template = controller.content[index];
                                return Column(
                                  children: [
                                    ListTile(
                                      leading: Radio<String>(
                                          value: template.id.toString(),
                                          groupValue: groupTemplate,
                                          onChanged: (value) {
                                            setState(() {
                                              groupTemplate = value as String;
                                              print(value);
                                            });
                                          }),
                                      title: Text("${template.description}"),
                                    ),
                                    Divider(),
                                  ],
                                );
                              },
                            ),
                          )
                        : Text("vish"),
                  );
                }),
              ),
            ],
          ),
          GestureDetector(
            onTap: () async {
              await controller.createDocument(groupValue: groupTemplate);
              await controller.getTemplate(groupValue: groupTemplate);
              if (groupTemplate == "61ccda35608597522e250424") {
                Modular.to.pushNamed(
                    "/documentRequestDynamicDataContratoLocacaoPage");
              } else {
                Modular.to.pushNamed("/documentRequestInvolvedPeoplePage");
              }
            },
            child: MyButton("Próximo"),
          ),
        ],
      ),
    );
  }
}
