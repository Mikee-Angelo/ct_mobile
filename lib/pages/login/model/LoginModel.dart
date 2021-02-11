class LoginModel {
  String _accessToken;
  String _tokenType;
  int _expiresIn;
  String _error;

  LoginModel(
      {String accessToken, String tokenType, int expiresIn, String error}) {
    this._accessToken = accessToken;
    this._tokenType = tokenType;
    this._expiresIn = expiresIn;
    this._error = error;
  }

  String get accessToken => _accessToken;
  set accessToken(String accessToken) => _accessToken = accessToken;
  String get tokenType => _tokenType;
  set tokenType(String tokenType) => _tokenType = tokenType;
  int get expiresIn => _expiresIn;
  set expiresIn(int expiresIn) => _expiresIn = expiresIn;
  String get error => _error;
  set error(String error) => _error = error;

  LoginModel.fromJson(Map<String, dynamic> json) {
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _expiresIn = json['expires_in'];
    _error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this._accessToken;
    data['token_type'] = this._tokenType;
    data['expires_in'] = this._expiresIn;
    data['error'] = this._error;
    return data;
  }
}
