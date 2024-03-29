import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barcode Scanner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BarcodeScannerPage(),
    );
  }
}

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({super.key});

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  String barcodeResult = 'No data';

  Future<void> scanBarcode() async {
    String barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE);

    setState(() {
      barcodeResult = barcodeScanResult;
    });
  }

  Future<void> scanQR() async {
    String barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666', 'Cancel', true, ScanMode.QR);

    setState(() {
      barcodeResult = barcodeScanResult;
    });
  }

  Future<void> getBarcodeStreamReceiver() async {
     FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)
        ?.listen(
      (event) {
        setState(() {
          barcodeResult = event;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Scan result: $barcodeResult',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: scanBarcode,
              child: const Text('Scan Barcode'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: getBarcodeStreamReceiver,
              child: const Text('Get Barcode Stream Receiver'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: scanQR,
              child: const Text('Scan QR code'),
            ),
          ],
        ),
      ),
    );
  }
}
