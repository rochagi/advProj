// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_request_involved_person_segundo_locatario_contrato_locacao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStore
    on
        _DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStoreBase,
        Store {
  final _$documentRequestModelAtom = Atom(
      name:
          '_DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStoreBase.documentRequestModel');

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

  final _$updateSegundoLocatarioContratoLocacaoAsyncAction = AsyncAction(
      '_DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStoreBase.updateSegundoLocatarioContratoLocacao');

  @override
  Future<void> updateSegundoLocatarioContratoLocacao(
      {String? idDoc,
      String? nome,
      String? numeroCpf,
      String? naturalidade,
      String? uf,
      String? idCpf,
      String? idRg,
      String? dataExpedicao,
      String? registroGeral,
      String? id}) {
    return _$updateSegundoLocatarioContratoLocacaoAsyncAction.run(() => super
        .updateSegundoLocatarioContratoLocacao(
            idDoc: idDoc,
            nome: nome,
            numeroCpf: numeroCpf,
            naturalidade: naturalidade,
            uf: uf,
            idCpf: idCpf,
            idRg: idRg,
            dataExpedicao: dataExpedicao,
            registroGeral: registroGeral,
            id: id));
  }

  @override
  String toString() {
    return '''
documentRequestModel: ${documentRequestModel}
    ''';
  }
}
