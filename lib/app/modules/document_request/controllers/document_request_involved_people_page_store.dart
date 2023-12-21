import 'package:advogadox/app/modules/document_request/data_source/document_request_repository.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'document_request_involved_people_page_store.g.dart';

class DocumentRequestInvolvedPeoplePageStore = _DocumentRequestInvolvedPeoplePageStoreBase
    with _$DocumentRequestInvolvedPeoplePageStore;

abstract class _DocumentRequestInvolvedPeoplePageStoreBase with Store {
  DocumentRequestRepository? _repository;
  _DocumentRequestInvolvedPeoplePageStoreBase(this._repository);

  @observable
  DocumentRequestModel documentRequestModel = DocumentRequestModel();

  @action
  Future<void> updatePerson({
    String? cpf,
    String? nome,
    String? estado,
    String? cidade,
    String? cep,
    String? bairro,
    String? logradouro,
    String? numero,
    String? complemento,
  }) async {
    try {
      final result = await _repository?.putUpdateInvolvedPersonLocador(
        id: "${Modular.get<DocumentRequestModel>().involvedPeople?[0].id}",
        idDoc: "${Modular.get<DocumentRequestModel>().id}",
        idCpf:
            "${Modular.get<DocumentRequestModel>().involvedPeople?[0].notaryDocuments?[0].id}",
        idComprovanteResidencia:
            "${Modular.get<DocumentRequestModel>().involvedPeople?[0].notaryDocuments?[1].id}",
        nome: "$nome",
        cpf: "$cpf",
        estado: "$estado",
        cidade: "$cidade",
        cep: "$cep",
        bairro: "$bairro",
        logradouro: "$logradouro",
        numero: "$numero",
        complemento: "$complemento",
      );
      print(
          "esse é o id do documento no put ${Modular.get<DocumentRequestModel>().id}");
    } catch (e) {}
  }
}
