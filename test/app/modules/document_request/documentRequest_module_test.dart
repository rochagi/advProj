
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advogadox/app/modules/document_request/documentRequest_module.dart';
 
void main() {

  setUpAll(() {
    initModule(DocumentRequestModule());
  });
}