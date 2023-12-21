import 'package:advogadox/app/modules/document_request/controllers/document_request_dynamic_data_contrato_locacao_page_store.dart';
import 'package:advogadox/app/modules/document_request/controllers/document_request_involved_people_locatario_page_store.dart';
import 'package:advogadox/app/modules/document_request/controllers/document_request_involved_people_page_store.dart';
import 'package:advogadox/app/modules/document_request/controllers/document_request_involved_person_segundo_locatario_contrato_locacao_store.dart';
import 'package:advogadox/app/modules/document_request/pages/document_request_dynamic_data_contrato_locacao_page.dart';
import 'package:advogadox/app/modules/document_request/pages/document_request_involved_people_locatario_page.dart';
import 'package:advogadox/app/modules/document_request/pages/document_request_involved_people_page.dart';
import 'package:advogadox/app/modules/document_request/pages/document_request_involved_person_fiador_contrato_locacao_page.dart';
import 'package:advogadox/app/modules/document_request/pages/document_request_involved_person_segundo_locatario_contrato_locacao_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/client/custom_client.dart';
import 'controllers/document_templates_store.dart';
import 'data_source/document_request_repository.dart';
import 'data_source/document_request_repository_impl.dart';
import 'data_source/document_templates_repository.dart';
import 'data_source/document_templates_repository_impl.dart';
import 'pages/document_templates_page.dart';

class DocumentRequestModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<CustomClient>((i) => CustomClient()),
    Bind<DocumentTemplatesRepository>(
        (i) => DocumentTemplatesRepositoryImpl(i.get<CustomClient>())),
    Bind<DocumentRequestRepository>(
        (i) => DocumentRequestRepositoryImpl(i.get<CustomClient>())),
    Bind<DocumentTemplatesStore>(
        (i) => DocumentTemplatesStore(i.get(), i.get())),
    Bind<DocumentRequestInvolvedPeoplePageStore>(
        (i) => DocumentRequestInvolvedPeoplePageStore(i.get())),
    Bind<DocumentRequestInvolvedPeopleLocatarioStorePage>(
        (i) => DocumentRequestInvolvedPeopleLocatarioStorePage(i.get())),
    Bind<DocumentRequestDynamicDataContratoLocacaoStore>(
        (i) => DocumentRequestDynamicDataContratoLocacaoStore(i.get())),
    Bind<DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStore>(
        (i) =>
            DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoStore(
                i.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute("/", child: (context, args) => DocumentTemplatePage()),
    ChildRoute("/documentRequestInvolvedPeoplePage",
        child: (context, args) => DocumentRequestInvolvedPeoplePage()),
    ChildRoute("/documentRequestInvolvedPeopleLocatarioPage",
        child: (context, args) => DocumentRequestInvolvePeopleLocatarioPage()),
    ChildRoute("/documentRequestDynamicDataContratoLocacaoPage",
        child: (context, args) =>
            DocumentRequestDynamicDataContratoLocacaoPage()),
    ChildRoute(
        "/documentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPage",
        child: (context, args) =>
            DocumentRequestInvolvedPersonSegundoLocatarioContratoLocacaoPage()),
    ChildRoute("/documentRequestInvolvedPersonFiadorContratoLocacaoPage",
        child: (context, args) =>
            DocumentRequestInvolvedPersonFiadorContratoLocacaoPage())
  ];
}
