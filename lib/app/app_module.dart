import 'package:advogadox/app/modules/document_request/documentRequest_module.dart';
import 'package:advogadox/app/shared/client/custom_client.dart';
import 'package:advogadox/app/shared/models/document_request_model.dart';
import 'package:advogadox/app/shared/models/document_templates_model.dart';

import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<CustomClient>((i) => CustomClient()),
    Bind.singleton((i) => DocumentRequestModel())
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: DocumentRequestModule()),
  ];
}
