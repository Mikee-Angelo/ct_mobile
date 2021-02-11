class RegisterModel {
  String _message;
  Errors _errors;

  RegisterModel({String message, Errors errors}) {
    this._message = message;
    this._errors = errors;
  }

  String get message => _message;
  set message(String message) => _message = message;
  Errors get errors => _errors;
  set errors(Errors errors) => _errors = errors;

  RegisterModel.fromJson(Map<String, dynamic> json) {
    _message = json['message'];
    _errors =
        json['errors'] != null ? new Errors.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this._message;
    if (this._errors != null) {
      data['errors'] = this._errors.toJson();
    }
    return data;
  }
}

class Errors {
  List<String> _phone;
  List<String> _password;

  Errors({List<String> phone, List<String> password}) {
    this._phone = phone;
    this._password = password;
  }

  List<String> get phone => _phone;
  set phone(List<String> phone) => _phone = phone;
  List<String> get password => _password;
  set password(List<String> password) => _password = password;

  Errors.fromJson(Map<String, dynamic> json) {
    _phone = json['phone'].cast<String>();
    _password = json['password'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phone'] = this._phone;
    data['password'] = this._password;
    return data;
  }
}
