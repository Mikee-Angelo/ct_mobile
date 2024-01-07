import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scanner/bloc.dart';
import 'package:scanner/pages/register/repo/RegisterRepo.dart';
import 'package:scanner/validations/RegisterValidation.dart';

class RegisterBloc implements Bloc {
  RegisterRepo _repo = RegisterRepo();

  final firstName = BehaviorSubject<String>();
  final lastName = BehaviorSubject<String>();
  final address = BehaviorSubject<String>();
  final phone = BehaviorSubject<String>();
  final password = BehaviorSubject<String>();

  Stream<String> get firstNameStream => firstName.stream;
  Stream<String> get lastNameStream => lastName.stream;
  Stream<String> get addressStream => address.stream;
  Stream<String> get phoneStream => phone.stream;
  Stream<String> get passwordStream => password.stream;

  Stream<bool> get validSubmit => Rx.combineLatest5(
      firstNameStream,
      lastNameStream,
      addressStream,
      phoneStream,
      passwordStream,
      (a, b, c, d, e) => true);

  submit({required BuildContext context}) async {
    return await _repo
        .init(
      firstName: firstName.value,
      lastName: lastName.value,
      address: address.value,
      phone: phone.value,
      password: password.value,
    )
        .then((value) {
      // if (value.errors == null) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => Login(),
      //     ),
      //   );
      // }
    }).catchError((error) {
      print('Error : $error');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    firstName.close();
    lastName.close();
    address.close();
    phone.close();
    password.close();
  }
}

final register = RegisterBloc();
