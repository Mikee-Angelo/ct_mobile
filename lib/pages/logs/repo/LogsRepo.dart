import 'package:flutter/material.dart';
import 'package:scanner/pages/logs/model/AllLogsModel.dart';
import 'package:scanner/pages/logs/model/LatestLogsModel.dart';
import 'package:scanner/pages/logs/model/LogsModel.dart';
import 'package:scanner/pages/logs/provider/LogsProvider.dart';

class LogsRepo {
  final i = LogsProvider();

  Future<LogsModel?> init({
    required String token,
    required String uuid,
  }) =>
      i.init(token: token, uuid: uuid);

  Future<AllLogsModel?> all({required String token}) => i.all(token: token);

  Future<LatestLogsModel?> latest({required String token}) =>
      i.latest(token: token);
}
