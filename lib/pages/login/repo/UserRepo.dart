import 'package:flutter/material.dart';
import 'package:scanner/pages/login/model/UserModel.dart';
import 'package:scanner/pages/login/provider/UserProvider.dart';

class UserRepo {
  final i = UserProvider();

  Future<UserModel?> init({
    required String token,
  }) =>
      i.init(token: token);
}
