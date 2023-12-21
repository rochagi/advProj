import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'package:advogadox/app/modules/document_request/data_source/document_request_repository.dart';

import '../../../shared/models/document_templates_model.dart';
import '../data_source/document_templates_repository.dart';
import '../document_templates_status.dart';

part 'document_templates_store.g.dart';

class DocumentTemplatesStore = _DocumentTemplatesStoreBase
    with _$DocumentTemplatesStore;

abstract class _DocumentTemplatesStoreBase with Store {
  DocumentRequestRepository _requestRepository;
  late final DocumentTemplatesRepository _repository;
  _DocumentTemplatesStoreBase(
    this._requestRepository,
    this._repository,
  ) {
    fetchDocumentTemplates();
  }

  @observable
  DocumentTemplatesStatus status = DocumentTemplatesStatus.none;

  @observable
  List<Content> content = [];

  @observable
  DocumentTemplates documentModel = DocumentTemplates();

  @observable
  DocumentRequestModel documentRequestModel = DocumentRequestModel();

  @action
  Future<void> fetchDocumentTemplates() async {
    status = DocumentTemplatesStatus.loading;
    try {
      final response = await _repository.fetchDocumentTemplates();
      content.addAll(response);
      print("aqui ${content.length}");
      status = DocumentTemplatesStatus.success..value = response;
    } catch (e) {
      status = DocumentTemplatesStatus.error..value = e;
    }
  }

  @action
  Future<void> createDocument({required String groupValue}) async {
    try {
      var result = await _requestRepository.postCreateDocument(groupValue);
      // print(result);
    } catch (e) {}
  }

  @action
  Future<DocumentRequestModel?> getTemplate(
      {required String groupValue}) async {
    try {
      var dataResult = await _requestRepository.postCreateDocument(groupValue);

      print(
          "id ${Modular.get<DocumentRequestModel>().id = dataResult.id} resto das coisas: ${Modular.get<DocumentRequestModel>().involvedPeople = dataResult.involvedPeople}");
    } catch (e) {}
  }

  @action
  Future<void> updatePerson() async {
    // try {
    //   final result = await _requestRepository.putUpdateInvolvedPerson(
    //       id: "${Modular.get<DocumentRequestModel>().involvedPeople?[0].id}",
    //       idCpf:
    //           "${Modular.get<DocumentRequestModel>().involvedPeople?[0].notaryDocuments?[0].id},",
    //       idComprovanteResidencia:
    //           "${Modular.get<DocumentRequestModel>().involvedPeople?[0].notaryDocuments?[1].id}");

    //   print("esse deveria ser o id ${Modular.get<DocumentRequestModel>().id}");
    // } catch (e) {}
  }
}
