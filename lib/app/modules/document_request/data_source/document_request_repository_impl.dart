import 'dart:convert';

import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:dio/dio.dart';

import '../../../shared/client/base_url.dart';
import '../../../shared/client/custom_client.dart';
import 'document_request_repository.dart';

class DocumentRequestRepositoryImpl implements DocumentRequestRepository {
  late final CustomClient dio;
  DocumentRequestRepositoryImpl(
    this.dio,
  );

  @override
  Future<DocumentRequestModel> postCreateDocument(String groupValue) async {
    try {
      final params = json.encode({
        "templateId": groupValue,
        "name": "teste",
        "ownerAccountId": 1,
      });

      final response = await dio.post("$BaseUrl9090/document", data: params);

      final jsonResult = DocumentRequestModel.fromJson(response.data);
      return jsonResult;
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  @override
  Future<int?> putUpdateInvolvedPersonLocador({
    String? id,
    String? idCpf,
    String? idDoc,
    String? idComprovanteResidencia,
    String? nome,
    String? cpf,
    String? estado,
    String? cidade,
    String? cep,
    String? bairro,
    String? logradouro,
    String? numero,
    String? complemento,
  }) async {
    try {
      final params = json.encode({
        "id": id,
        "notaryDocuments": [
          {
            "id": idCpf,
            "documentModel": "CPF",
            "status": "DONE",
            "attributeData": {"NOME": nome, "NO_DE_INSCRICAO": cpf}
          },
          {
            "id": idComprovanteResidencia,
            "documentModel": "COMPROVANTE_ENDERECO",
            "status": "DONE",
            "attributeData": {
              "UF": estado,
              "BAIRRO": bairro,
              "COMPLEMENTO": complemento,
              "NUMERO": numero,
              "LOGRADOURO": logradouro,
              "CIDADE": cidade,
              "CEP": cep,
            }
          }
        ],
        "involvedType": "LOCADOR"
      });

      final response = await dio
          .put("$BaseUrl9090/document/$idDoc/involvedPerson", data: params);
      print(nome);

      return response.statusCode;
    } catch (e) {}
  }

  @override
  Future<int?> putUpdateInvolverPersonLocatario({
    String? idDoc,
    String? idCpf,
    String? id,
    String? nome,
    String? cpf,
  }) async {
    try {
      final params = json.encode({
        "id": id,
        "notaryDocuments": [
          {
            "id": idCpf,
            "documentModel": "CPF",
            "status": "DONE",
            "attributeData": {
              "NOME": nome,
              "NO_DE_INSCRICAO": cpf,
            }
          }
        ],
        "involvedType": "LOCATARIO"
      });

      final response = await dio
          .put("$BaseUrl9090/document/$idDoc/involvedPerson", data: params);
      return response.statusCode;
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  @override
  Future<int?> DynamicDataContratoLocacao({
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
    try {
      var params = json.encode({
        "BAIRRO_IMOVEL": bairroImovel,
        "TIPO_IMOVEL": tipoImovel,
        "EMAIL_LOCATARIO": emailLocatario,
        "TEXTO_REGIME_BENS__LOCATARIO": textoRegimeBensLocatario,
        "ESTADO_CIVIL_LOCATARIO": estadoCivilLocatario,
        "DATA_INICIO_LOCACAO": dataInicioLocacao,
        "PROFISSAO_LOCADOR": profissaoLocador,
        "PROFISSAO_LOCATARIO": profissaoLocatario,
        "EMAIL_LOCATARIO_2": emailLocatario2,
        "NACIONALIDADE_LOCADOR": nacionalidadeLocador,
        "NACIONALIDADE_LOCATARIO": nacionalidadeLocatario,
        "NUMERO_MESES_LOCACAO": numeroMesesLocacao,
        "DIA_PAGTO_LOCACAO": diaPagamentoLocacao,
        "ESTADO_CIVIL_LOCADOR": estadoCivilLocador,
        "TEXTO_REGIME_BENS__LOCADOR": textoRegimeBensLocador,
        "VALOR_ALUGUEL_LOCACAO": valorAluguelLocacao,
        "ENDERECO_IMOVEL": enderecoImovel,
        "ESTADO_CIVIL_LOCATARIO_2": estadoCivilLocatario,
        "NACIONALIDADE_LOCATARIO_2": estadoCivilLocatario2,
        "PROFISSAO_LOCATARIO_2": profissaoLocatario2,
        "EMAIL_LOCADOR": emailLocador,
        "TEXTO_REGIME_BENS__LOCATARIO_2": textoRegimeBensLocatario2,
        "INDICE_LOCACAO": indiceLocacao,
      });
      final response = await dio.put("$BaseUrl9090/document/$idDoc/dynamicdata",
          data: params);
      return response.statusCode;
    } catch (e) {}
    throw UnimplementedError();
  }

  @override
  Future<int?> updateSegundoLocatarioContratoLocacao({
    String? id,
    String? idCpf,
    String? idRg,
    String? idDoc,
    String? nome,
    String? numeroCpf,
    String? naturalidade,
    String? uf,
    String? dataExpedicao,
    String? registroGeral,
  }) async {
    try {
      var params = json.encode({
        "id": id,
        "notaryDocuments": [
          {
            "id": idCpf,
            "documentModel": "CPF",
            "status": "DONE",
            "attributeData": {
              "NOME": nome,
              "NO_DE_INSCRICAO": numeroCpf,
            }
          },
          {
            "id": idRg,
            "documentModel": "RG",
            "status": "DONE",
            "attributeData": {
              "NATURALIDADE": naturalidade,
              "UF": uf,
              "NOME": nome,
              "DATA_DE_EXPEDICAO": dataExpedicao,
              "REGISTRO_GERAL": registroGeral,
            }
          }
        ],
        "involvedType": "LOCATARIO_2"
      });
      final response = await dio
          .put("$BaseUrl9090/document/$idDoc/involvedPerson", data: params);
      return response.statusCode;
    } catch (e) {}
    throw UnimplementedError();
  }

  @override
  Future<int?> updateFiadorContratoLocacao({
    String? id,
    String? idCpf,
    String? idRg,
    String? idDoc,
    String? nome,
    String? numeroCpf,
    String? naturalidade,
    String? uf,
    String? dataExpedicao,
    String? registroGeral,
  }) async {
    try {
      var params = json.encode({
        "id": id,
        "notaryDocuments": [
          {
            "id": idRg,
            "documentModel": "RG",
            "status": "DONE",
            "attributeData": {
              "NATURALIDADE": naturalidade,
              "UF": uf,
              "NOME": nome,
              "DATA_DE_EXPEDICAO": dataExpedicao,
              "REGISTRO_GERAL": registroGeral,
            }
          },
          {
            "id": "61eaf8df98f35310b0fafe04",
            "documentModel": "CPF",
            "status": "DONE",
            "attributeData": {
              "NOME": nome,
              "NO_DE_INSCRICAO": numeroCpf,
            }
          }
        ],
        "involvedType": "FIADOR"
      });
      final response = await dio
          .put("$BaseUrl9090/document/$idDoc/involvedPerson", data: params);
      return response.statusCode;
    } catch (e) {}
    throw UnimplementedError();
  }

  // @override
  // Future<DocumentRequestModel> getDownloadDocument(
  //   String? idDoc,
  // ) async {
  //   try {
  //     final response = await dio.download(
  //       "document/$idDoc/create",
  //     );
  //   } on DioError catch (e) {
  //     throw (e.message);
  //   }
  //   throw UnimplementedError();
  // }
}
