import 'package:advogadox/app/shared/models/document_request_model.dart';

abstract class DocumentRequestRepository {
  Future<DocumentRequestModel> postCreateDocument(String groupValue);
  Future<int?> putUpdateInvolvedPersonLocador({
    String? id,
    String idCpf,
    String idDoc,
    String idComprovanteResidencia,
    String nome,
    String cpf,
    String estado,
    String cidade,
    String cep,
    String bairro,
    String logradouro,
    String numero,
    String complemento,
  });
  Future<int?> putUpdateInvolverPersonLocatario({
    String id,
    String idDoc,
    String nome,
    String cpf,
    String idCpf,
  });

  Future<int?> DynamicDataContratoLocacao({
    String idDoc,
    String bairroImovel,
    String tipoImovel,
    String emailLocatario,
    String textoRegimeBensLocatario,
    String estadoCivilLocatario,
    String dataInicioLocacao,
    String profissaoLocador,
    String profissaoLocatario,
    String emailLocatario2,
    String nacionalidadeLocador,
    String nacionalidadeLocatario,
    String diaPagamentoLocacao,
    String estadoCivilLocador,
    String textoRegimeBensLocador,
    String valorAluguelLocacao,
    String enderecoImovel,
    String estadoCivilLocatario2,
    String nacionalidadeLocatario2,
    String profissaoLocatario2,
    String emailLocador,
    String textoRegimeBensLocatario2,
    String indiceLocacao,
    String numeroMesesLocacao,
  });
  Future<int?> updateSegundoLocatarioContratoLocacao({
    String id,
    String idDoc,
    String idCpf,
    String idRg,
    String nome,
    String numeroCpf,
    String naturalidade,
    String uf,
    String dataExpedicao,
    String registroGeral,
  });
  Future<int?> updateFiadorContratoLocacao({
    String id,
    String idDoc,
    String idCpf,
    String idRg,
    String nome,
    String numeroCpf,
    String naturalidade,
    String uf,
    String dataExpedicao,
    String registroGeral,
  });

//
//
//
//
//
//
//
//
//
//

  // Future<DocumentRequestModel> getDownloadDocument({
  //   String idDoc,
  // });
}
