import 'package:advogadox/app/modules/document_request/data_source/document_request_repository.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'document_request_involved_person_segundo_locatario_contrato_locacao_store.g.dart';

class DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStore = _DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStoreBase
    with _$DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStore;

abstract class _DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStoreBase
    with Store {
  DocumentRequestRepository? _repository;
  _DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStoreBase(
      this._repository);
  @observable
  DocumentRequestModel documentRequestModel = DocumentRequestModel();

  @action
  Future<void> updateSegundoLocatarioContratoLocacao({
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
    await _repository?.updateSegundoLocatarioContratoLocacao(
      idDoc: "${Modular.get<DocumentRequestModel>().id}",
      id: "${Modular.get<DocumentRequestModel>().involvedPeople?[0].id}",
      idCpf:
          "${Modular.get<DocumentRequestModel>().involvedPeople?[0].notaryDocuments?[0].id}",
      idRg:
          "${Modular.get<DocumentRequestModel>().involvedPeople?[0].notaryDocuments?[1].id}",
      dataExpedicao: "$dataExpedicao",
      naturalidade: "$naturalidade",
      nome: "$naturalidade",
      numeroCpf: "$numeroCpf",
      registroGeral: "$registroGeral",
      uf: "$uf",
    );
  }
}
