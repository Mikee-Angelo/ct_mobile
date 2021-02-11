class LogsModel {
  String _message;
  dynamic _error;

  LogsModel({String message, String error}) {
    this._message = message;
    this._error = error;
  }

  String get message => _message;
  set message(String message) => _message = message;
  dynamic get error => _error;
  set error(dynamic error) => _error = error;

  LogsModel.fromJson(Map<String, dynamic> json) {
    _message = json['message'];
    _error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this._message;
    data['error'] = this._error;
    return data;
  }
}
