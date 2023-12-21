class DocumentTemplates {
  List<Content>? content;
  Pageable? pageable;
  bool? last;
  int? totalPages;
  int? totalElements;
  Sort? sort;
  bool? first;
  int? number;
  int? numberOfElements;
  int? size;
  bool? empty;

  DocumentTemplates(
      {this.content,
      this.pageable,
      this.last,
      this.totalPages,
      this.totalElements,
      this.sort,
      this.first,
      this.number,
      this.numberOfElements,
      this.size,
      this.empty});

  DocumentTemplates.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(new Content.fromJson(v));
      });
    }
    pageable = json['pageable'] != null
        ? new Pageable.fromJson(json['pageable'])
        : null;
    last = json['last'];
    totalPages = json['totalPages'];
    totalElements = json['totalElements'];
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    first = json['first'];
    number = json['number'];
    numberOfElements = json['numberOfElements'];
    size = json['size'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.content != null) {
      data['content'] = this.content!.map((v) => v.toJson()).toList();
    }
    if (this.pageable != null) {
      data['pageable'] = this.pageable!.toJson();
    }
    data['last'] = this.last;
    data['totalPages'] = this.totalPages;
    data['totalElements'] = this.totalElements;
    if (this.sort != null) {
      data['sort'] = this.sort!.toJson();
    }
    data['first'] = this.first;
    data['number'] = this.number;
    data['numberOfElements'] = this.numberOfElements;
    data['size'] = this.size;
    data['empty'] = this.empty;
    return data;
  }

  factory DocumentTemplates.fromMap(Map<String, dynamic> map) {
    return DocumentTemplates(
        // content: List<Content>.fromMap(map['content']),

        // name: map['name'],
        //   picture: MainLogoPicture.fromMap(map['picture']),
        );
  }
}

class Content {
  String? id;
  String? name;
  String? description;
  String? versionId;
  Metadata? metadata;
  List<String>? dynamicdata;
  String? filename;

  Content(
      {this.id,
      this.name,
      this.description,
      this.versionId,
      this.metadata,
      this.dynamicdata,
      this.filename});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    versionId = json['versionId'];
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    dynamicdata = json['dynamicdata'].cast<String>();
    filename = json['filename'];
  }
  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      description: map['description'],
      id: map['id'],
    );
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
    data['filename'] = this.filename;
    return data;
  }

  @override
  String toString() {
    return 'Content(id: $id, name: $name, description: $description, versionId: $versionId, metadata: $metadata, dynamicdata: $dynamicdata, filename: $filename)';
  }
}

class Metadata {
  List<String>? lOCATARIO;
  List<String>? fIADOR;
  List<String>? lOCADOR;
  List<String>? fIADOR2;
  List<String>? aDMINISTRADORA;
  List<String>? lOCATARIO2;

  Metadata(
      {this.lOCATARIO,
      this.fIADOR,
      this.lOCADOR,
      this.fIADOR2,
      this.aDMINISTRADORA,
      this.lOCATARIO2});

  Metadata.fromJson(Map<String, dynamic> json) {
    lOCATARIO = json['LOCATARIO'].cast<String>();
    fIADOR = json['FIADOR'].cast<String>();
    lOCADOR = json['LOCADOR'].cast<String>();
    fIADOR2 = json['FIADOR_2'].cast<String>();
    aDMINISTRADORA = json['ADMINISTRADORA'].cast<String>();
    lOCATARIO2 = json['LOCATARIO_2'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LOCATARIO'] = this.lOCATARIO;
    data['FIADOR'] = this.fIADOR;
    data['LOCADOR'] = this.lOCADOR;
    data['FIADOR_2'] = this.fIADOR2;
    data['ADMINISTRADORA'] = this.aDMINISTRADORA;
    data['LOCATARIO_2'] = this.lOCATARIO2;
    return data;
  }
}

class Pageable {
  Sort? sort;
  int? pageNumber;
  int? pageSize;
  int? offset;
  bool? unpaged;
  bool? paged;

  Pageable(
      {this.sort,
      this.pageNumber,
      this.pageSize,
      this.offset,
      this.unpaged,
      this.paged});

  Pageable.fromJson(Map<String, dynamic> json) {
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    offset = json['offset'];
    unpaged = json['unpaged'];
    paged = json['paged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sort != null) {
      data['sort'] = this.sort!.toJson();
    }
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['offset'] = this.offset;
    data['unpaged'] = this.unpaged;
    data['paged'] = this.paged;
    return data;
  }
}

class Sort {
  bool? sorted;
  bool? unsorted;
  bool? empty;

  Sort({this.sorted, this.unsorted, this.empty});

  Sort.fromJson(Map<String, dynamic> json) {
    sorted = json['sorted'];
    unsorted = json['unsorted'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sorted'] = this.sorted;
    data['unsorted'] = this.unsorted;
    data['empty'] = this.empty;
    return data;
  }
}
