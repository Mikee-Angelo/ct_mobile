import 'package:flutter/cupertino.dart';
import 'package:scanner/bloc.dart';
import 'package:scanner/pages/logs/bloc/LogsBloc.dart';
import 'package:scanner/pages/logs/repo/LogsRepo.dart';

class QrBloc implements Bloc {
  final _repo = LogsRepo();

  onQRViewCreated( {
    required BuildContext context,
  }) {
    bool scanned = false;

    // controller.scannedDataStream.listen((scanData) async {
    //   scanned = true;

    //   if (scanned) {
    //     if (scanData.length > 0) {
    //       controller?.pauseCamera();
    //       final storage = new FlutterSecureStorage();

    //       String token = await storage.read(key: 'token');
    //       await _repo.init(token: token, uuid: scanData).then((value) {
    //         print('Value: ${value.message}');
    //         if (value.error == null) {
    //           scanned = true;
    //           Navigator.pushNamed(context, '/home');
    //         } else {
    //           scanned = false;
    //           controller?.resumeCamera();
    //         }
    //       }).catchError((error) {
    //         controller?.resumeCamera();
    //         scanned = false;
    //         print('Error: $error');
    //       });
    //     } else {
    //       controller?.resumeCamera();
    //     }
    //   }
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}

final qr = QrBloc();
