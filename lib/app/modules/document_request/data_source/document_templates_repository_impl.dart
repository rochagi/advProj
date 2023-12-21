import '../../../shared/client/base_url.dart';
import '../../../shared/client/custom_client.dart';
import '../../../shared/models/document_templates_model.dart';
import 'document_templates_repository.dart';

class DocumentTemplatesRepositoryImpl implements DocumentTemplatesRepository {
  late final CustomClient dio;
  DocumentTemplatesRepositoryImpl(this.dio);

  @override
  Future<List<Content>> fetchDocumentTemplates() async {
    try {
      final response = await dio.get("$BaseUrl/document-template");
      final filteredResponse = response.data['content'] as List;
      final result = filteredResponse.map((e) => Content.fromMap(e)).toList();
      return result;
    } catch (e) {
      throw (e);
    }
  }
}
