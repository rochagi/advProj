import 'package:advogadox/app/modules/document_request/data_source/document_request_repository.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'document_request_involved_person_fiador_contrato_locacao_store.g.dart';

class DocumentRequestInvolvedPersonFiadorContratoLocacaoStore = _DocumentRequestInvolvedPersonFiadorContratoLocacaoStoreBase
    with _$DocumentRequestInvolvedPersonFiadorContratoLocacaoStore;

abstract class _DocumentRequestInvolvedPersonFiadorContratoLocacaoStoreBase
    with Store {
  DocumentRequestRepository? _repository;
  _DocumentRequestInvolvedPersonFiadorContratoLocacaoStoreBase(
      this._repository);

  @observable
  DocumentRequestModel documentRequestModel = DocumentRequestModel();

  @action
  Future<void> updateFiadorContratoLocacao({
    String? idDoc,
    String? nome,
    String? numeroCpf,
    String? naturalidade,
    String? uf,
    String? idCpf,
    String? idRg,
    String? dataExpedicao,
    String? registroGeral,
    String? id,
  }) async {
    await _repository?.updateFiadorContratoLocacao(
      idDoc: "${Modular.get<DocumentRequestModel>().id}",
      id: "${Modular.get<DocumentRequestModel>().involvedPeople?[1].id}",
      idCpf:
          "${Modular.get<DocumentRequestModel>().involvedPeople?[1].notaryDocuments?[1].id}",
      idRg:
          "${Modular.get<DocumentRequestModel>().involvedPeople?[1].notaryDocuments?[0].id}",
      dataExpedicao: "$dataExpedicao",
      naturalidade: "$naturalidade",
      nome: "$naturalidade",
      numeroCpf: "$numeroCpf",
      registroGeral: "$registroGeral",
      uf: "$uf",
    );
  }
}
