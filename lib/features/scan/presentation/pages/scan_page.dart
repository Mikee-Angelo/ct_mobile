import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Scan QR'),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: MobileScanner(onDetect: _onDetect),
    );
  }

  void _onDetect(BarcodeCapture barcodes) {
    final List<Barcode> bc = barcodes.barcodes;
    for (final barcode in bc) {
      debugPrint('Barcode found! ${barcode.rawValue}');

      return;
    }
  }
}
