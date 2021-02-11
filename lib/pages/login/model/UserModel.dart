class UserModel {
  int _id;
  String _uuid;
  Null _email;
  String _phone;
  String _address;
  Null _emailVerifiedAt;
  String _qr;
  String _createdAt;
  String _updatedAt;
  String _firstName;
  String _lastName;
  String _fullName;

  UserModel(
      {int id,
      String uuid,
      Null email,
      String phone,
      String address,
      Null emailVerifiedAt,
      String qr,
      String createdAt,
      String updatedAt,
      String firstName,
      String lastName,
      String fullName}) {
    this._id = id;
    this._uuid = uuid;
    this._email = email;
    this._phone = phone;
    this._address = address;
    this._emailVerifiedAt = emailVerifiedAt;
    this._qr = qr;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._firstName = firstName;
    this._lastName = lastName;
    this._fullName = fullName;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get uuid => _uuid;
  set uuid(String uuid) => _uuid = uuid;
  Null get email => _email;
  set email(Null email) => _email = email;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  String get address => _address;
  set address(String address) => _address = address;
  Null get emailVerifiedAt => _emailVerifiedAt;
  set emailVerifiedAt(Null emailVerifiedAt) =>
      _emailVerifiedAt = emailVerifiedAt;
  String get qr => _qr;
  set qr(String qr) => _qr = qr;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;

  UserModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _uuid = json['uuid'];
    _email = json['email'];
    _phone = json['phone'];
    _address = json['address'];
    _emailVerifiedAt = json['email_verified_at'];
    _qr = json['qr'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['uuid'] = this._uuid;
    data['email'] = this._email;
    data['phone'] = this._phone;
    data['address'] = this._address;
    data['email_verified_at'] = this._emailVerifiedAt;
    data['qr'] = this._qr;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['full_name'] = this._fullName;
    return data;
  }
}
