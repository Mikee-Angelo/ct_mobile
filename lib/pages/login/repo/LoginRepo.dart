import 'package:flutter/material.dart';
import 'package:scanner/pages/login/model/LoginModel.dart';
import 'package:scanner/pages/login/provider/LoginProvider.dart';

class LoginRepo {
  final i = LoginProvider();

  Future<LoginModel> init({
    @required String phone,
    @required String password,
  }) =>
      i.init(phone: phone, password: password);
}
