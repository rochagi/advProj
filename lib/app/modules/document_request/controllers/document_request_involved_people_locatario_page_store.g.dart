// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_request_involved_people_locatario_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DocumentRequestInvolvedPeopleLocatarioStorePage
    on _DocumentRequestInvolvedPeopleLocatarioStorePageBase, Store {
  final _$documentRequestModelAtom = Atom(
      name:
          '_DocumentRequestInvolvedPeopleLocatarioStorePageBase.documentRequestModel');

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

  final _$updatePersonLocatarioAsyncAction = AsyncAction(
      '_DocumentRequestInvolvedPeopleLocatarioStorePageBase.updatePersonLocatario');

  @override
  Future<void> updatePersonLocatario({String? cpf, String? nome}) {
    return _$updatePersonLocatarioAsyncAction
        .run(() => super.updatePersonLocatario(cpf: cpf, nome: nome));
  }

  @override
  String toString() {
    return '''
documentRequestModel: ${documentRequestModel}
    ''';
  }
}
