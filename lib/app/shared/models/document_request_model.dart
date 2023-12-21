class DocumentRequestModel {
  static final DocumentRequestModel _instance =
      DocumentRequestModel._internal();

  factory DocumentRequestModel() {
    return _instance;
  }

  DocumentRequestModel._internal();

  String? id;
  int? ownerAccountId;
  String? createdOn;
  String? lastModifiedOn;
  String? status;
  Template? template;
  String? name;
  int? version;
  List<InvolvedPeople>? involvedPeople;
  Dynamicdata? dynamicdata;
/*
  DocumentRequestModel(
      {this.id,
      this.ownerAccountId,
      this.createdOn,
      this.lastModifiedOn,
      this.status,
      this.template,
      this.name,
      this.version,
      this.involvedPeople,
      this.dynamicdata});

  factory DocumentRequestModel.fromMap(Map<String, dynamic> map) {
    return DocumentRequestModel(
      id: map['id'],
    );
  }
*/
  DocumentRequestModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ownerAccountId = json['ownerAccountId'];
    createdOn = json['createdOn'];
    lastModifiedOn = json['lastModifiedOn'];
    status = json['status'];
    template = json['template'] != null
        ? new Template.fromJson(json['template'])
        : null;
    name = json['name'];
    version = json['version'];
    if (json['involvedPeople'] != null) {
      involvedPeople = <InvolvedPeople>[];
      json['involvedPeople'].forEach((v) {
        involvedPeople!.add(new InvolvedPeople.fromJson(v));
      });
    }
    dynamicdata = json['dynamicdata'] != null
        ? new Dynamicdata.fromJson(json['dynamicdata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ownerAccountId'] = this.ownerAccountId;
    data['createdOn'] = this.createdOn;
    data['lastModifiedOn'] = this.lastModifiedOn;
    data['status'] = this.status;
    if (this.template != null) {
      data['template'] = this.template!.toJson();
    }
    data['name'] = this.name;
    data['version'] = this.version;
    if (this.involvedPeople != null) {
      data['involvedPeople'] =
          this.involvedPeople!.map((v) => v.toJson()).toList();
    }
    if (this.dynamicdata != null) {
      data['dynamicdata'] = this.dynamicdata!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'DocumentRequestModel(id: $id, ownerAccountId: $ownerAccountId, createdOn: $createdOn, lastModifiedOn: $lastModifiedOn, status: $status, template: $template, name: $name, version: $version, involvedPeople: $involvedPeople, dynamicdata: $dynamicdata)';
  }
}

class Template {
  String? id;
  String? name;
  String? description;
  String? versionId;
  Metadata? metadata;
  List<String>? dynamicdata;

  Template(
      {this.id,
      this.name,
      this.description,
      this.versionId,
      this.metadata,
      this.dynamicdata});

  Template.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    versionId = json['versionId'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    dynamicdata = json['dynamicdata'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['versionId'] = this.versionId;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    data['dynamicdata'] = this.dynamicdata;
    return data;
  }
}

class Metadata {
  List<String>? lOCADOR;
  List<String>? lOCATARIO;

  Metadata({this.lOCADOR, this.lOCATARIO});

  Metadata.fromJson(Map<String, dynamic> json) {
    lOCADOR = json['LOCADOR'].cast<String>();
    lOCATARIO = json['LOCATARIO'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LOCADOR'] = this.lOCADOR;
    data['LOCATARIO'] = this.lOCATARIO;
    return data;
  }
}

class InvolvedPeople {
  String? id;
  List<NotaryDocuments>? notaryDocuments;
  String? involvedType;

  InvolvedPeople({this.id, this.notaryDocuments, this.involvedType});

  factory InvolvedPeople.fromMap(Map<String, dynamic> map) {
    return InvolvedPeople(
      id: map['id'],

      // name: map['name'],
      //   picture: MainLogoPicture.fromMap(map['picture']),
    );
  }

  InvolvedPeople.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['notaryDocuments'] != null) {
      notaryDocuments = <NotaryDocuments>[];
      json['notaryDocuments'].forEach((v) {
        notaryDocuments!.add(new NotaryDocuments.fromJson(v));
      });
    }
    involvedType = json['involvedType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.notaryDocuments != null) {
      data['notaryDocuments'] =
          this.notaryDocuments!.map((v) => v.toJson()).toList();
    }
    data['involvedType'] = this.involvedType;
    return data;
  }

  @override
  String toString() =>
      'InvolvedPeople(id: $id, notaryDocuments: $notaryDocuments, involvedType: $involvedType)';
}

class NotaryDocuments {
  String? id;
  String? documentModel;
  String? status;
  AttributeData? attributeData;

  NotaryDocuments(
      {this.id, this.documentModel, this.status, this.attributeData});

  NotaryDocuments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    documentModel = json['documentModel'];
    status = json['status'];
    attributeData = json['attributeData'] != null
        ? new AttributeData.fromJson(json['attributeData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['documentModel'] = this.documentModel;
    data['status'] = this.status;
    if (this.attributeData != null) {
      data['attributeData'] = this.attributeData!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'NotaryDocuments(id: $id, documentModel: $documentModel, status: $status, attributeData: $attributeData)';
  }
}

class AttributeData {
  String? nOME;
  String? nODEINSCRICAO;
  String? uF;
  String? bAIRRO;
  String? cOMPLEMENTO;
  String? nUMERO;
  String? lOGRADOURO;
  String? cIDADE;
  String? cEP;

  AttributeData(
      {this.nOME,
      this.nODEINSCRICAO,
      this.uF,
      this.bAIRRO,
      this.cOMPLEMENTO,
      this.nUMERO,
      this.lOGRADOURO,
      this.cIDADE,
      this.cEP});

  AttributeData.fromJson(Map<String, dynamic> json) {
    nOME = json['NOME'];
    nODEINSCRICAO = json['NO_DE_INSCRICAO'];
    uF = json['UF'];
    bAIRRO = json['BAIRRO'];
    cOMPLEMENTO = json['COMPLEMENTO'];
    nUMERO = json['NUMERO'];
    lOGRADOURO = json['LOGRADOURO'];
    cIDADE = json['CIDADE'];
    cEP = json['CEP'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NOME'] = this.nOME;
    data['NO_DE_INSCRICAO'] = this.nODEINSCRICAO;
    data['UF'] = this.uF;
    data['BAIRRO'] = this.bAIRRO;
    data['COMPLEMENTO'] = this.cOMPLEMENTO;
    data['NUMERO'] = this.nUMERO;
    data['LOGRADOURO'] = this.lOGRADOURO;
    data['CIDADE'] = this.cIDADE;
    data['CEP'] = this.cEP;
    return data;
  }

  @override
  String toString() {
    return 'AttributeData(nOME: $nOME, nODEINSCRICAO: $nODEINSCRICAO, uF: $uF, bAIRRO: $bAIRRO, cOMPLEMENTO: $cOMPLEMENTO, nUMERO: $nUMERO, lOGRADOURO: $lOGRADOURO, cIDADE: $cIDADE, cEP: $cEP)';
  }
}

class Dynamicdata {
  String? indice;

  Dynamicdata({this.indice});

  Dynamicdata.fromJson(Map<String, dynamic> json) {
    indice = json['indice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['indice'] = this.indice;
    return data;
  }
}
