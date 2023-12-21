import 'package:advogadox/app/modules/document_request/data_source/document_request_repository.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'document_request_dynamic_data_contrato_locacao_page_store.g.dart';

class DocumentRequestDynamicDataContratoLocacaoStore = _DocumentRequestDynamicDataContratoLocacaoStoreBase
    with _$DocumentRequestDynamicDataContratoLocacaoStore;

abstract class _DocumentRequestDynamicDataContratoLocacaoStoreBase with Store {
  DocumentRequestRepository? _repository;
  _DocumentRequestDynamicDataContratoLocacaoStoreBase(this._repository);

  @observable
  DocumentRequestModel documentRequestModel = DocumentRequestModel();

  @action
  Future<void> updateDynamicDataContratoLocacao({
    String? idDoc,
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
    String? numeroMesesLocacao,
  }) async {
    final result = await _repository?.DynamicDataContratoLocacao(
      idDoc: "${Modular.get<DocumentRequestModel>().id}",
      bairroImovel: "$bairroImovel",
      dataInicioLocacao: "$dataInicioLocacao",
      diaPagamentoLocacao: "$diaPagamentoLocacao",
      emailLocador: "$emailLocador",
      emailLocatario2: "$emailLocatario2",
      emailLocatario: "$emailLocatario",
      enderecoImovel: "$enderecoImovel",
      estadoCivilLocador: "$estadoCivilLocador",
      estadoCivilLocatario2: "$estadoCivilLocatario2",
      estadoCivilLocatario: "$estadoCivilLocatario",
      indiceLocacao: "$indiceLocacao",
      nacionalidadeLocador: "$nacionalidadeLocador",
      nacionalidadeLocatario2: "$nacionalidadeLocatario2",
      nacionalidadeLocatario: "$nacionalidadeLocatario",
      numeroMesesLocacao: "$numeroMesesLocacao",
      profissaoLocador: "$profissaoLocador",
      profissaoLocatario2: "$profissaoLocatario2",
      profissaoLocatario: "$profissaoLocatario",
      textoRegimeBensLocador: "$textoRegimeBensLocador",
      textoRegimeBensLocatario2: "$textoRegimeBensLocatario2",
      textoRegimeBensLocatario: "$textoRegimeBensLocatario",
      tipoImovel: "$tipoImovel",
      valorAluguelLocacao: "$valorAluguelLocacao",
    );
  }
}
