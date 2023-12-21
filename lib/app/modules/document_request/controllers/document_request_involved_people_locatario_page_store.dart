import 'package:advogadox/app/modules/document_request/data_source/document_request_repository.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'document_request_involved_people_locatario_page_store.g.dart';

class DocumentRequestInvolvedPeopleLocatarioStorePage = _DocumentRequestInvolvedPeopleLocatarioStorePageBase
    with _$DocumentRequestInvolvedPeopleLocatarioStorePage;

abstract class _DocumentRequestInvolvedPeopleLocatarioStorePageBase with Store {
  DocumentRequestRepository? _repository;
  _DocumentRequestInvolvedPeopleLocatarioStorePageBase(this._repository);

  @observable
  DocumentRequestModel documentRequestModel = DocumentRequestModel();

  @action
  Future<void> updatePersonLocatario({
    String? cpf,
    String? nome,
  }) async {
    try {
      final result = await _repository?.putUpdateInvolverPersonLocatario(
        id: "${Modular.get<DocumentRequestModel>().involvedPeople?[1].id}",
        idDoc: "${Modular.get<DocumentRequestModel>().id}",
        idCpf:
            "${Modular.get<DocumentRequestModel>().involvedPeople?[1].notaryDocuments?[0].id}",
        nome: "$nome",
        cpf: "$cpf",
      );
      print(
          "esse é o id do documento no put ${Modular.get<DocumentRequestModel>().id}");
    } catch (e) {}
  }
}
