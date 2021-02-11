import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:scanner/pages/qr/bloc/QrBloc.dart';

const flashOn = 'FLASH ON';
const flashOff = 'FLASH OFF';
const frontCamera = 'FRONT CAMERA';
const backCamera = 'BACK CAMERA';

class QrMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QrMobileState();
  }
}

class QrMobileState extends State<QrMobile> {
  @override
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  var qrText = '';
  var flashState = flashOn;
  var cameraState = frontCamera;
  QRViewController controller;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: (controller) =>
                  qr.onQRViewCreated(controller, context: context),
              overlay: QrScannerOverlayShape(
                borderColor: Theme.of(context).primaryColor,
                borderRadius: 20,
                borderLength: 30,
                borderWidth: ScreenUtil.getInstance().getWidth(10),
                cutOutSize: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isFlashOn(String current) {
    return flashOn == current;
  }

  bool _isBackCamera(String current) {
    return backCamera == current;
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
