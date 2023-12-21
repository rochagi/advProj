// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_request_dynamic_data_contrato_locacao_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DocumentRequestDynamicDataContratoLocacaoStore
    on _DocumentRequestDynamicDataContratoLocacaoStoreBase, Store {
  final _$documentRequestModelAtom = Atom(
      name:
          '_DocumentRequestDynamicDataContratoLocacaoStoreBase.documentRequestModel');

  @override
  DocumentRequestModel get documentRequestModel {
    _$documentRequestModelAtom.reportRead();
    return super.documentRequestModel;
  }

  @override
  set documentRequestModel(DocumentRequestModel value) {
    _$documentRequestModelAtom.reportWrite(value, super.documentRequestModel,
        () {
      super.documentRequestModel = value;
    });
  }

  final _$updateDynamicDataContratoLocacaoAsyncAction = AsyncAction(
      '_DocumentRequestDynamicDataContratoLocacaoStoreBase.updateDynamicDataContratoLocacao');

  @override
  Future<void> updateDynamicDataContratoLocacao(
      {String? idDoc,
      String? bairroImovel,
      String? tipoImovel,
      String? emailLocatario,
      String? textoRegimeBensLocatario,
      String? estadoCivilLocatario,
      String? dataInicioLocacao,
      String? profissaoLocador,
      String? profissaoLocatario,
      String? emailLocatario2,
      String? nacionalidadeLocador,
      String? nacionalidadeLocatario,
      String? diaPagamentoLocacao,
      String? estadoCivilLocador,
      String? textoRegimeBensLocador,
      String? valorAluguelLocacao,
      String? enderecoImovel,
      String? estadoCivilLocatario2,
      String? nacionalidadeLocatario2,
      String? profissaoLocatario2,
      String? emailLocador,
      String? textoRegimeBensLocatario2,
      String? indiceLocacao,
      String? numeroMesesLocacao}) {
    return _$updateDynamicDataContratoLocacaoAsyncAction.run(() => super
        .updateDynamicDataContratoLocacao(
            idDoc: idDoc,
            bairroImovel: bairroImovel,
            tipoImovel: tipoImovel,
            emailLocatario: emailLocatario,
            textoRegimeBensLocatario: textoRegimeBensLocatario,
            estadoCivilLocatario: estadoCivilLocatario,
            dataInicioLocacao: dataInicioLocacao,
            profissaoLocador: profissaoLocador,
            profissaoLocatario: profissaoLocatario,
            emailLocatario2: emailLocatario2,
            nacionalidadeLocador: nacionalidadeLocador,
            nacionalidadeLocatario: nacionalidadeLocatario,
            diaPagamentoLocacao: diaPagamentoLocacao,
            estadoCivilLocador: estadoCivilLocador,
            textoRegimeBensLocador: textoRegimeBensLocador,
            valorAluguelLocacao: valorAluguelLocacao,
            enderecoImovel: enderecoImovel,
            estadoCivilLocatario2: estadoCivilLocatario2,
            nacionalidadeLocatario2: nacionalidadeLocatario2,
            profissaoLocatario2: profissaoLocatario2,
            emailLocador: emailLocador,
            textoRegimeBensLocatario2: textoRegimeBensLocatario2,
            indiceLocacao: indiceLocacao,
            numeroMesesLocacao: numeroMesesLocacao));
  }

  @override
  String toString() {
    return '''
documentRequestModel: ${documentRequestModel}
    ''';
  }
}
