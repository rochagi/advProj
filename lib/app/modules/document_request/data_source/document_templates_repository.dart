import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:advogadox/app/shared/models/document_templates_model.dart';

abstract class DocumentTemplatesRepository {
  Future<List<Content>> fetchDocumentTemplates();
}
