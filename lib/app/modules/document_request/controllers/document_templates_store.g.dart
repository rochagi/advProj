// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_templates_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DocumentTemplatesStore on _DocumentTemplatesStoreBase, Store {
  final _$statusAtom = Atom(name: '_DocumentTemplatesStoreBase.status');

  @override
  DocumentTemplatesStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(DocumentTemplatesStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$contentAtom = Atom(name: '_DocumentTemplatesStoreBase.content');

  @override
  List<Content> get content {
    _$contentAtom.reportRead();
    return super.content;
  }

  @override
  set content(List<Content> value) {
    _$contentAtom.reportWrite(value, super.content, () {
      super.content = value;
    });
  }

  final _$documentModelAtom =
      Atom(name: '_DocumentTemplatesStoreBase.documentModel');

  @override
  DocumentTemplates get documentModel {
    _$documentModelAtom.reportRead();
    return super.documentModel;
  }

  @override
  set documentModel(DocumentTemplates value) {
    _$documentModelAtom.reportWrite(value, super.documentModel, () {
      super.documentModel = value;
    });
  }

  final _$documentRequestModelAtom =
      Atom(name: '_DocumentTemplatesStoreBase.documentRequestModel');

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

  final _$fetchDocumentTemplatesAsyncAction =
      AsyncAction('_DocumentTemplatesStoreBase.fetchDocumentTemplates');

  @override
  Future<void> fetchDocumentTemplates() {
    return _$fetchDocumentTemplatesAsyncAction
        .run(() => super.fetchDocumentTemplates());
  }

  final _$createDocumentAsyncAction =
      AsyncAction('_DocumentTemplatesStoreBase.createDocument');

  @override
  Future<void> createDocument({required String groupValue}) {
    return _$createDocumentAsyncAction
        .run(() => super.createDocument(groupValue: groupValue));
  }

  final _$getTemplateAsyncAction =
      AsyncAction('_DocumentTemplatesStoreBase.getTemplate');

  @override
  Future<DocumentRequestModel?> getTemplate({required String groupValue}) {
    return _$getTemplateAsyncAction
        .run(() => super.getTemplate(groupValue: groupValue));
  }

  final _$updatePersonAsyncAction =
      AsyncAction('_DocumentTemplatesStoreBase.updatePerson');

  @override
  Future<void> updatePerson() {
    return _$updatePersonAsyncAction.run(() => super.updatePerson());
  }

  @override
  String toString() {
    return '''
status: ${status},
content: ${content},
documentModel: ${documentModel},
documentRequestModel: ${documentRequestModel}
    ''';
  }
}
