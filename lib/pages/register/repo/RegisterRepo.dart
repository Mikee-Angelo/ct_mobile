import 'package:flutter/material.dart';
import 'package:scanner/pages/register/model/RegisterModel.dart';
import 'package:scanner/pages/register/provider/RegisterProvider.dart';

class RegisterRepo {
  final i = RegisterProvider();

  Future<RegisterModel> init({
    @required String firstName,
    @required String lastName,
    @required String address,
    @required String phone,
    @required String password,
  }) =>
      i.init(
        firstName: firstName,
        lastName: lastName,
        address: address,
        phone: phone,
        password: password,
      );
}
