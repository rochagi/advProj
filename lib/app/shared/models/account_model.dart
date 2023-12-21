

class AccountModel {
  int? id;
  bool? active;
  String? name;
  String? fullName;
  String? email;
  // Partner? partner;
  String? creci;
  String? cpf;
  Null cnpj;
  String? mainPhoneNumber;
  Null secondaryPhoneNumber;
  String? addressZipCode;
  String? addressState;
  String? addressCity;
  String? addressNeighborhood;
  String? addressStreet;
  String? addressNumber;
  Null addressComplement;
  Null rg;
  Null nationality;
  Null maritalStatus;
  Null maritalPropertyScheme;
  bool? mustUpdateData;
  Null representativeName;
  Null representativeCpf;
  Null representativeRg;
  Null representativeProfession;
  Null representativeNationality;
  Null representativeMaritalStatus;
  Null representativeMaritalPropertyScheme;
  Null representativeAddress;
  Null representativeEmail;
  String? pictureId;
  MainLogoPicture? picture;
  String? partnerId;
  String? personType;
  String? partnerName;
  String? personTypeDescription;
  Address? address;
  AccountModel(
      {this.id,
      this.active,
      this.name,
      this.fullName,
      this.email,
      // this.partner,
      this.creci,
      this.cpf,
      this.cnpj,
      this.mainPhoneNumber,
      this.secondaryPhoneNumber,
      this.addressZipCode,
      this.addressState,
      this.addressCity,
      this.addressNeighborhood,
      this.addressStreet,
      this.addressNumber,
      this.addressComplement,
      this.rg,
      this.nationality,
      this.maritalStatus,
      this.maritalPropertyScheme,
      this.mustUpdateData,
      this.representativeName,
      this.representativeCpf,
      this.representativeRg,
      this.representativeProfession,
      this.representativeNationality,
      this.representativeMaritalStatus,
      this.representativeMaritalPropertyScheme,
      this.representativeAddress,
      this.representativeEmail,
      this.pictureId,
      this.picture,
      this.partnerId,
      this.personType,
      this.partnerName,
      this.personTypeDescription,
      this.address});
  AccountModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    active = json['active'];
    name = json['name'];
    fullName = json['fullName'];
    email = json['email'];
    // partner =
    //     json['partner'] != null ? new Partner.fromJson(json['partner']) : null;
    creci = json['creci'];
    cpf = json['cpf'];
    cnpj = json['cnpj'];
    mainPhoneNumber = json['mainPhoneNumber'];
    secondaryPhoneNumber = json['secondaryPhoneNumber'];
    addressZipCode = json['addressZipCode'];
    addressState = json['addressState'];
    addressCity = json['addressCity'];
    addressNeighborhood = json['addressNeighborhood'];
    addressStreet = json['addressStreet'];
    addressNumber = json['addressNumber'];
    addressComplement = json['addressComplement'];
    rg = json['rg'];
    nationality = json['nationality'];
    maritalStatus = json['maritalStatus'];
    maritalPropertyScheme = json['maritalPropertyScheme'];
    mustUpdateData = json['mustUpdateData'];
    representativeName = json['representativeName'];
    representativeCpf = json['representativeCpf'];
    representativeRg = json['representativeRg'];
    representativeProfession = json['representativeProfession'];
    representativeNationality = json['representativeNationality'];
    representativeMaritalStatus = json['representativeMaritalStatus'];
    representativeMaritalPropertyScheme =
        json['representativeMaritalPropertyScheme'];
    representativeAddress = json['representativeAddress'];
    representativeEmail = json['representativeEmail'];
    pictureId = json['pictureId'];
    picture = json['picture'] != null
        ? new MainLogoPicture.fromJson(json['picture'])
        : null;
    partnerId = json['partnerId'];
    personType = json['personType'];
    partnerName = json['partnerName'];
    personTypeDescription = json['personTypeDescription'];
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['active'] = this.active;
    data['name'] = this.name;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    // if (this.partner != null) {
    //   data['partner'] = this.partner?.toJson();
    // }
    data['creci'] = this.creci;
    data['cpf'] = this.cpf;
    data['cnpj'] = this.cnpj;
    data['mainPhoneNumber'] = this.mainPhoneNumber;
    data['secondaryPhoneNumber'] = this.secondaryPhoneNumber;
    data['addressZipCode'] = this.addressZipCode;
    data['addressState'] = this.addressState;
    data['addressCity'] = this.addressCity;
    data['addressNeighborhood'] = this.addressNeighborhood;
    data['addressStreet'] = this.addressStreet;
    data['addressNumber'] = this.addressNumber;
    data['addressComplement'] = this.addressComplement;
    data['rg'] = this.rg;
    data['nationality'] = this.nationality;
    data['maritalStatus'] = this.maritalStatus;
    data['maritalPropertyScheme'] = this.maritalPropertyScheme;
    data['mustUpdateData'] = this.mustUpdateData;
    data['representativeName'] = this.representativeName;
    data['representativeCpf'] = this.representativeCpf;
    data['representativeRg'] = this.representativeRg;
    data['representativeProfession'] = this.representativeProfession;
    data['representativeNationality'] = this.representativeNationality;
    data['representativeMaritalStatus'] = this.representativeMaritalStatus;
    data['representativeMaritalPropertyScheme'] =
        this.representativeMaritalPropertyScheme;
    data['representativeAddress'] = this.representativeAddress;
    data['representativeEmail'] = this.representativeEmail;
    data['pictureId'] = this.pictureId;
    if (this.picture != null) {
      data['picture'] = this.picture?.toJson();
    }
    data['partnerId'] = this.partnerId;
    data['personType'] = this.personType;
    data['partnerName'] = this.partnerName;
    data['personTypeDescription'] = this.personTypeDescription;
    if (this.address != null) {
      data['address'] = this.address?.toJson();
    }
    return data;
  }

  factory AccountModel.fromMap(Map<String, dynamic> map) {
    return AccountModel(
        name: map['name'],
        picture: MainLogoPicture.fromMap(map['picture']),
        fullName: map['fullName'],
        email: map['email'],
        mainPhoneNumber: map['mainPhoneNumber']);
  }

  @override
  String toString() {
    return 'AccountModel(id: $id, active: $active, name: $name, fullName: $fullName, email: $email, creci: $creci, cpf: $cpf, cnpj: $cnpj, mainPhoneNumber: $mainPhoneNumber, secondaryPhoneNumber: $secondaryPhoneNumber, addressZipCode: $addressZipCode, addressState: $addressState, addressCity: $addressCity, addressNeighborhood: $addressNeighborhood, addressStreet: $addressStreet, addressNumber: $addressNumber, addressComplement: $addressComplement, rg: $rg, nationality: $nationality, maritalStatus: $maritalStatus, maritalPropertyScheme: $maritalPropertyScheme, mustUpdateData: $mustUpdateData, representativeName: $representativeName, representativeCpf: $representativeCpf, representativeRg: $representativeRg, representativeProfession: $representativeProfession, representativeNationality: $representativeNationality, representativeMaritalStatus: $representativeMaritalStatus, representativeMaritalPropertyScheme: $representativeMaritalPropertyScheme, representativeAddress: $representativeAddress, representativeEmail: $representativeEmail, pictureId: $pictureId, picture: $picture, partnerId: $partnerId, personType: $personType, partnerName: $partnerName, personTypeDescription: $personTypeDescription, address: $address)';
  }
}

class Partner {
  String? id;
  bool? active;
  String? name;
  String? mainLogoPictureId;
  MainLogoPicture? mainLogoPicture;
  String? loginUnselectedLogoPictureId;
  MainLogoPicture? loginUnselectedLogoPicture;
  String? loginSelectedLogoPictureId;
  MainLogoPicture? loginSelectedLogoPicture;
  String? integrationAuthenticateUrl;
  String? integrationGetPropertiesUrl;
  String? integrationGetAccountDataUrl;
  String? email;
  String? responsibleFullName;
  String? responsibleEmail;
  String? responsiblePhoneNumber;
  Partner(
      {this.id,
      this.active,
      this.name,
      this.mainLogoPictureId,
      this.mainLogoPicture,
      this.loginUnselectedLogoPictureId,
      this.loginUnselectedLogoPicture,
      this.loginSelectedLogoPictureId,
      this.loginSelectedLogoPicture,
      this.integrationAuthenticateUrl,
      this.integrationGetPropertiesUrl,
      this.integrationGetAccountDataUrl,
      this.email,
      this.responsibleFullName,
      this.responsibleEmail,
      this.responsiblePhoneNumber});
  Partner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    active = json['active'];
    name = json['name'];
    mainLogoPictureId = json['mainLogoPictureId'];
    mainLogoPicture = json['mainLogoPicture'] != null
        ? new MainLogoPicture.fromJson(json['mainLogoPicture'])
        : null;
    loginUnselectedLogoPictureId = json['loginUnselectedLogoPictureId'];
    loginUnselectedLogoPicture = json['loginUnselectedLogoPicture'] != null
        ? new MainLogoPicture.fromJson(json['loginUnselectedLogoPicture'])
        : null;
    loginSelectedLogoPictureId = json['loginSelectedLogoPictureId'];
    loginSelectedLogoPicture = json['loginSelectedLogoPicture'] != null
        ? new MainLogoPicture.fromJson(json['loginSelectedLogoPicture'])
        : null;
    integrationAuthenticateUrl = json['integrationAuthenticateUrl'];
    integrationGetPropertiesUrl = json['integrationGetPropertiesUrl'];
    integrationGetAccountDataUrl = json['integrationGetAccountDataUrl'];
    email = json['email'];
    responsibleFullName = json['responsibleFullName'];
    responsibleEmail = json['responsibleEmail'];
    responsiblePhoneNumber = json['responsiblePhoneNumber'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['active'] = this.active;
    data['name'] = this.name;
    data['mainLogoPictureId'] = this.mainLogoPictureId;
    if (this.mainLogoPicture != null) {
      data['mainLogoPicture'] = this.mainLogoPicture?.toJson();
    }
    data['loginUnselectedLogoPictureId'] = this.loginUnselectedLogoPictureId;
    if (this.loginUnselectedLogoPicture != null) {
      data['loginUnselectedLogoPicture'] =
          this.loginUnselectedLogoPicture?.toJson();
    }
    data['loginSelectedLogoPictureId'] = this.loginSelectedLogoPictureId;
    if (this.loginSelectedLogoPicture != null) {
      data['loginSelectedLogoPicture'] =
          this.loginSelectedLogoPicture?.toJson();
    }
    data['integrationAuthenticateUrl'] = this.integrationAuthenticateUrl;
    data['integrationGetPropertiesUrl'] = this.integrationGetPropertiesUrl;
    data['integrationGetAccountDataUrl'] = this.integrationGetAccountDataUrl;
    data['email'] = this.email;
    data['responsibleFullName'] = this.responsibleFullName;
    data['responsibleEmail'] = this.responsibleEmail;
    data['responsiblePhoneNumber'] = this.responsiblePhoneNumber;
    return data;
  }
}

class MainLogoPicture {
  String? mediaType;
  String? content;
  MainLogoPicture({this.mediaType, this.content});
  MainLogoPicture.fromJson(Map<String, dynamic> json) {
    mediaType = json['mediaType'];
    content = json['content'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mediaType'] = this.mediaType;
    data['content'] = this.content;
    return data;
  }

  factory MainLogoPicture.fromMap(Map<String, dynamic> map) {
    return MainLogoPicture(
      mediaType: map['mediaType'],
      content: map['content'],
    );
  }

  @override
  String toString() =>
      'MainLogoPicture(mediaType: $mediaType, content: $content)';
}

class Address {
  int? zipCode;
  String? state;
  String? city;
  String? neighborhood;
  String? street;
  String? addrnumber;
  Null complement;
  String? full;
  Address(
      {this.zipCode,
      this.state,
      this.city,
      this.neighborhood,
      this.street,
      this.addrnumber,
      this.complement,
      this.full});
  Address.fromJson(Map<String, dynamic> json) {
    zipCode = json['zipCode'];
    state = json['state'];
    city = json['city'];
    neighborhood = json['neighborhood'];
    street = json['street'];
    addrnumber = json['addrnumber'];
    complement = json['complement'];
    full = json['full'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['zipCode'] = this.zipCode;
    data['state'] = this.state;
    data['city'] = this.city;
    data['neighborhood'] = this.neighborhood;
    data['street'] = this.street;
    data['addrnumber'] = this.addrnumber;
    data['complement'] = this.complement;
    data['full'] = this.full;
    return data;
  }
}
