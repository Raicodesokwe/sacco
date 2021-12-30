import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:saccoapp/shop/secondshoppage.dart';
import 'package:saccoapp/signs/login/loginscreen.dart';

class KiuAr extends StatefulWidget {
  const KiuAr({Key? key}) : super(key: key);

  @override
  State<KiuAr> createState() => _KiuArState();
}

class _KiuArState extends State<KiuAr> {
  QRViewController? controller;
  Barcode? barcode;
  final qrKey = GlobalKey(debugLabel: 'QR');
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: const Color(0xFF5113AA),
          borderRadius: 10,
          borderLength: 20,
          borderWidth: 10,
          cutOutSize: size.width * 0.8),
    ));
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((barcode) => setState(() {
          this.barcode = barcode;
         SecondPageRoute();
        }));
  }
  SecondPageRoute() async {
       controller?.pauseCamera();
       var value = await Navigator.push(context,
           MaterialPageRoute(builder: (context) {
             return SecondShopPage(barcode!);
           })).then((value) => controller!.resumeCamera());
}
}
