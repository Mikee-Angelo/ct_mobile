import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rxdart/rxdart.dart';
import 'package:scanner/bloc.dart';
import 'package:scanner/pages/logs/repo/LogsRepo.dart';

class LogsBloc implements Bloc {
  final _repo = LogsRepo();
  final storage = new FlutterSecureStorage();

  final logs = BehaviorSubject();
  final logsLatest = BehaviorSubject();

  submit({
    required BuildContext context,
    required String uuid,
  }) async {
    final String? token = await storage.read(key: 'token');

    await _repo.init(token: token!, uuid: uuid).then((value) {
      // if (value.error == null) {
      //   Navigator.pushNamed(context, '/home');
      // } else {
      //   print('Error: ${value.error.toString()}');
      // }
    }).catchError((error) {
      print('Error: $error');
    });
  }

  getAllLogs() async {
    final String? token = await storage.read(key: 'token');

    await _repo.all(token: token!).then((value) {
      // logs.sink.add(value.data);
    }).catchError((error) {
      print('Error: $error');
    });
  }

  getLatestLogs() async {
    final String? token = await storage.read(key: 'token');

    await _repo.latest(token: token!).then((value) {}).catchError((error) {
      print('Error: $error');
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    logs.close();
    logsLatest.close();
  }
}

final logs = LogsBloc();
