import 'package:advogadox/app/modules/document_request/controllers/document_request_dynamic_data_contrato_locacao_page_store.dart';
import 'package:advogadox/app/shared/my_colors.dart';
import 'package:advogadox/app/shared/widgets/button.dart';
import 'package:advogadox/app/shared/widgets/texts/h1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DocumentRequestDynamicDataContratoLocacaoPage extends StatefulWidget {
  const DocumentRequestDynamicDataContratoLocacaoPage({Key? key})
      : super(key: key);

  @override
  _DocumentRequestDynamicDataContratoLocacaoPageState createState() =>
      _DocumentRequestDynamicDataContratoLocacaoPageState();
}

class _DocumentRequestDynamicDataContratoLocacaoPageState extends ModularState<
    DocumentRequestDynamicDataContratoLocacaoPage,
    DocumentRequestDynamicDataContratoLocacaoStore> {
  @override
  void initState() {
    controller.updateDynamicDataContratoLocacao();
    super.initState();
  }

  var bairroImovel = TextEditingController();
  var emailLocatario = TextEditingController();
  var tipoImovel = TextEditingController();
  var textoRegimeBensLocatario = TextEditingController();
  var estadoCivilLocatario = TextEditingController();
  var dataInicioLocacao = TextEditingController();
  var profissaoLocador = TextEditingController();
  var profissaoLocatario = TextEditingController();
  var emailLocatario2 = TextEditingController();
  var nacionalidadeLocador = TextEditingController();
  var nacionalidadeLocatario = TextEditingController();
  var diaPagamentoLocacao = TextEditingController();
  var estadoCivilLocador = TextEditingController();
  var textoRegimeBensLocador = TextEditingController();
  var valorAluguelLocacao = TextEditingController();
  var enderecoImovel = TextEditingController();
  var estadoCivilLocatario2 = TextEditingController();
  var nacionalidadeLocatario2 = TextEditingController();
  var profissaoLocatario2 = TextEditingController();
  var emailLocador = TextEditingController();
  var textoRegimeBensLocatario2 = TextEditingController();
  var indiceLocacao = TextEditingController();
  var numeroMesesLocacao = TextEditingController();

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
          H1(
            content: "Dados",
            isBold: false,
          ),
          Container(
            height: 500,
            child: ListView(
              children: [
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        /*imovel */
                        TextFormField(
                          controller: bairroImovel,
                          decoration: InputDecoration(
                            hintText: "Bairro do Imóvel",
                          ),
                        ),
                        TextFormField(
                          controller: enderecoImovel,
                          decoration: InputDecoration(
                            hintText: "Endereço do Imóvel",
                          ),
                        ),
                        TextFormField(
                          controller: dataInicioLocacao,
                          decoration: InputDecoration(
                            hintText: "Data de Início da Locação",
                          ),
                        ),
                        TextFormField(
                          controller: diaPagamentoLocacao,
                          decoration: InputDecoration(
                            hintText: "Dia do pagamento da locação",
                          ),
                        ),
                        TextFormField(
                          controller: indiceLocacao,
                          decoration: InputDecoration(
                            hintText: "Índice Locação",
                          ),
                        ),
                        TextFormField(
                          controller: numeroMesesLocacao,
                          decoration: InputDecoration(
                            hintText: "Número de Meses de Locação",
                          ),
                        ),
                        TextFormField(
                          controller: tipoImovel,
                          decoration: InputDecoration(
                            hintText: "Tipo de Imóvel",
                          ),
                        ),
                        TextFormField(
                          controller: valorAluguelLocacao,
                          decoration: InputDecoration(
                            hintText: "Valor do Aluguel",
                          ),
                        ),
                        /*Locador */
                        TextFormField(
                          controller: emailLocador,
                          decoration: InputDecoration(
                            hintText: "Email Locador",
                          ),
                        ),
                        TextFormField(
                          controller: estadoCivilLocador,
                          decoration: InputDecoration(
                            hintText: "Estado Civil do Locador",
                          ),
                        ),
                        TextFormField(
                          controller: textoRegimeBensLocador,
                          decoration: InputDecoration(
                            hintText: "Regime de Bens Locador",
                          ),
                        ),
                        TextFormField(
                          controller: nacionalidadeLocador,
                          decoration: InputDecoration(
                            hintText: "Nacionalidade Locador",
                          ),
                        ),
                        TextFormField(
                          controller: profissaoLocador,
                          decoration: InputDecoration(
                            hintText: "Profissão Locador",
                          ),
                        ),
                        /*Locatario */
                        TextFormField(
                          controller: emailLocatario,
                          decoration: InputDecoration(
                            hintText: "Email Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: estadoCivilLocatario,
                          decoration: InputDecoration(
                            hintText: "Estado Civil Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: textoRegimeBensLocatario,
                          decoration: InputDecoration(
                            hintText: "Regime de Bens Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: nacionalidadeLocatario,
                          decoration: InputDecoration(
                            hintText: "Nacionalidade Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: profissaoLocatario,
                          decoration: InputDecoration(
                            hintText: "Profissão Locatário",
                          ),
                        ),
                        /**Segundo locatário */
                        TextFormField(
                          controller: emailLocatario2,
                          decoration: InputDecoration(
                            hintText: "Email Segundo Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: estadoCivilLocatario2,
                          decoration: InputDecoration(
                            hintText: "Estado Civil Segundo Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: nacionalidadeLocatario2,
                          decoration: InputDecoration(
                            hintText: "Nacionalidade Segundo Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: profissaoLocatario2,
                          decoration: InputDecoration(
                            hintText: "Profissão Segundo Locatário",
                          ),
                        ),
                        TextFormField(
                          controller: textoRegimeBensLocatario2,
                          decoration: InputDecoration(
                            hintText: "Regime de Bens Segundo Locatário",
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () async {
              await controller.updateDynamicDataContratoLocacao(
                bairroImovel: "${bairroImovel.text}",
                dataInicioLocacao: "${dataInicioLocacao.text}",
                diaPagamentoLocacao: "${diaPagamentoLocacao.text}",
                emailLocador: "${emailLocador.text}",
                emailLocatario2: "${emailLocatario2.text}",
                emailLocatario: "${emailLocatario.text}",
                enderecoImovel: "${enderecoImovel.text}",
                estadoCivilLocador: "${estadoCivilLocador.text}",
                estadoCivilLocatario2: "${estadoCivilLocatario2.text}",
                estadoCivilLocatario: "${estadoCivilLocatario.text}",
                indiceLocacao: "${indiceLocacao.text}",
                nacionalidadeLocador: "${nacionalidadeLocador.text}",
                nacionalidadeLocatario2: "${nacionalidadeLocatario2.text}",
                nacionalidadeLocatario: "${nacionalidadeLocatario.text}",
                numeroMesesLocacao: "${numeroMesesLocacao.text}",
                profissaoLocador: "${profissaoLocador.text}",
                profissaoLocatario2: "${profissaoLocatario2.text}",
                profissaoLocatario: "${profissaoLocatario.text}",
                textoRegimeBensLocador: "${textoRegimeBensLocador.text}",
                textoRegimeBensLocatario2: "${textoRegimeBensLocatario2.text}",
                textoRegimeBensLocatario: "${textoRegimeBensLocatario.text}",
                tipoImovel: "${tipoImovel.text}",
                valorAluguelLocacao: "${valorAluguelLocacao.text}",
              );
              Modular.to.pushNamed(
                  "/documentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPage");
            },
            child: MyButton("Continuar"),
          )
        ],
      ),
    );
  }
}
