// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_request_involved_people_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DocumentRequestInvolvedPeoplePageStore
    on _DocumentRequestInvolvedPeoplePageStoreBase, Store {
  final _$documentRequestModelAtom = Atom(
      name: '_DocumentRequestInvolvedPeoplePageStoreBase.documentRequestModel');

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

  final _$updatePersonAsyncAction =
      AsyncAction('_DocumentRequestInvolvedPeoplePageStoreBase.updatePerson');

  @override
  Future<void> updatePerson(
      {String? cpf,
      String? nome,
      String? estado,
      String? cidade,
      String? cep,
      String? bairro,
      String? logradouro,
      String? numero,
      String? complemento}) {
    return _$updatePersonAsyncAction.run(() => super.updatePerson(
        cpf: cpf,
        nome: nome,
        estado: estado,
        cidade: cidade,
        cep: cep,
        bairro: bairro,
        logradouro: logradouro,
        numero: numero,
        complemento: complemento));
  }

  @override
  String toString() {
    return '''
documentRequestModel: ${documentRequestModel}
    ''';
  }
}
