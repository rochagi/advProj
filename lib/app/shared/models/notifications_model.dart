class NotificationsModel {
  List<Content>? content;
  Pageable? pageable;
  bool? last;
  int? totalPages;
  int? totalElements;
  Sort? sort;
  int? number;
  int? numberOfElements;
  bool? first;
  int? size;
  bool? empty;

  NotificationsModel(
      {this.content,
      this.pageable,
      this.last,
      this.totalPages,
      this.totalElements,
      this.sort,
      this.number,
      this.numberOfElements,
      this.first,
      this.size,
      this.empty});

  NotificationsModel.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      // ignore: deprecated_member_use
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
    number = json['number'];
    numberOfElements = json['numberOfElements'];
    first = json['first'];
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
    data['number'] = this.number;
    data['numberOfElements'] = this.numberOfElements;
    data['first'] = this.first;
    data['size'] = this.size;
    data['empty'] = this.empty;
    return data;
  }

  factory NotificationsModel.fromMap(Map<String, dynamic> map) {
    return NotificationsModel(
      pageable: Pageable.fromMap(map['picture']),
      last: map['last'],
      totalElements: map['totalElements'],
      totalPages: map['totalPages'],
      number: map['number'],
      numberOfElements: map['numberOfElements'],
      first: map['first'],
      size: map['size'],
      empty: map['empty'],
    );
  }
}

class Content {
  Id? id;
  int? accountId;
  int? typeId;
  String? documentId;
  bool? removed;
  String? message;
  String? createdOn;
  String? originalId;

  Content(
      {this.id,
      this.accountId,
      this.typeId,
      this.documentId,
      this.removed,
      this.message,
      this.createdOn,
      this.originalId});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'] != null ? new Id.fromJson(json['id']) : null;
    accountId = json['accountId'];
    typeId = json['typeId'];
    documentId = json['documentId'];
    removed = json['removed'];
    message = json['message'];
    createdOn = json['createdOn'];
    originalId = json['originalId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id!.toJson();
    }
    data['accountId'] = this.accountId;
    data['typeId'] = this.typeId;
    data['documentId'] = this.documentId;
    data['removed'] = this.removed;
    data['message'] = this.message;
    data['createdOn'] = this.createdOn;
    data['originalId'] = this.originalId;
    return data;
  }

  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      id: Id.fromMap(map['picture']),
      accountId: map['accountId'],
      typeId: map['typeId'],
      documentId: map['documentId'],
      removed: map['removed'],
      message: map['message'],
      createdOn: map['createdOn'],
      originalId: map['originalId'],
    );
  }
}

class Id {
  int? timestamp;
  String? date;

  Id({this.timestamp, this.date});

  Id.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timestamp'] = this.timestamp;
    data['date'] = this.date;
    return data;
  }

  factory Id.fromMap(Map<String, dynamic> map) {
    return Id(
      timestamp: map['timestamp'],
      date: map['date'],
    );
  }
}

class Pageable {
  Sort? sort;
  int? pageNumber;
  int? pageSize;
  int? offset;
  bool? paged;
  bool? unpaged;

  Pageable(
      {this.sort,
      this.pageNumber,
      this.pageSize,
      this.offset,
      this.paged,
      this.unpaged});

  Pageable.fromJson(Map<String, dynamic> json) {
    sort = json['sort'] != null ? new Sort.fromJson(json['sort']) : null;
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    offset = json['offset'];
    paged = json['paged'];
    unpaged = json['unpaged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sort != null) {
      data['sort'] = this.sort!.toJson();
    }
    data['pageNumber'] = this.pageNumber;
    data['pageSize'] = this.pageSize;
    data['offset'] = this.offset;
    data['paged'] = this.paged;
    data['unpaged'] = this.unpaged;
    return data;
  }

  factory Pageable.fromMap(Map<String, dynamic> map) {
    return Pageable(
      sort: Sort.fromMap(map['picture']),
      pageNumber: map['pageNumber'],
      pageSize: map['pageSize'],
      offset: map['offset'],
      paged: map['paged'],
      unpaged: map['unpaged'],
    );
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

  factory Sort.fromMap(Map<String, dynamic> map) {
    return Sort(
      sorted: map['sorted'],
      unsorted: map['unsorted'],
      empty: map['empty'],
    );
  }
}
