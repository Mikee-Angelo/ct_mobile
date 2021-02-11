class LatestLogsModel {
  bool _status;
  Data _data;

  LatestLogsModel({bool status, Data data}) {
    this._status = status;
    this._data = data;
  }

  bool get status => _status;
  set status(bool status) => _status = status;
  Data get data => _data;
  set data(Data data) => _data = data;

  LatestLogsModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    if (this._data != null) {
      data['data'] = this._data.toJson();
    }
    return data;
  }
}

class Data {
  int _id;
  int _usersId;
  int _placesId;
  String _createdAt;
  String _updatedAt;
  String _phone;
  String _address;
  Null _emailVerifiedAt;
  int _usersProfilesId;
  String _firstName;
  String _lastName;
  String _fullName;

  Data(
      {int id,
      int usersId,
      int placesId,
      String createdAt,
      String updatedAt,
      String phone,
      String address,
      Null emailVerifiedAt,
      int usersProfilesId,
      String firstName,
      String lastName,
      String fullName}) {
    this._id = id;
    this._usersId = usersId;
    this._placesId = placesId;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._phone = phone;
    this._address = address;
    this._emailVerifiedAt = emailVerifiedAt;
    this._usersProfilesId = usersProfilesId;
    this._firstName = firstName;
    this._lastName = lastName;
    this._fullName = fullName;
  }

  int get id => _id;
  set id(int id) => _id = id;
  int get usersId => _usersId;
  set usersId(int usersId) => _usersId = usersId;
  int get placesId => _placesId;
  set placesId(int placesId) => _placesId = placesId;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  String get phone => _phone;
  set phone(String phone) => _phone = phone;
  String get address => _address;
  set address(String address) => _address = address;
  Null get emailVerifiedAt => _emailVerifiedAt;
  set emailVerifiedAt(Null emailVerifiedAt) =>
      _emailVerifiedAt = emailVerifiedAt;
  int get usersProfilesId => _usersProfilesId;
  set usersProfilesId(int usersProfilesId) =>
      _usersProfilesId = usersProfilesId;
  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _usersId = json['users_id'];
    _placesId = json['places_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _phone = json['phone'];
    _address = json['address'];
    _emailVerifiedAt = json['email_verified_at'];
    _usersProfilesId = json['users_profiles_id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['users_id'] = this._usersId;
    data['places_id'] = this._placesId;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    data['phone'] = this._phone;
    data['address'] = this._address;
    data['email_verified_at'] = this._emailVerifiedAt;
    data['users_profiles_id'] = this._usersProfilesId;
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['full_name'] = this._fullName;
    return data;
  }
}
