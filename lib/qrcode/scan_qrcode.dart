// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// class ScanQrCode extends StatefulWidget {
//   const ScanQrCode({super.key});

//   @override
//   State<ScanQrCode> createState() => _ScanQrCodeState();
// }

// class _ScanQrCodeState extends State<ScanQrCode> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,)
//       ,body:MobileScanner(
//         onDetect: (capture)
//           // {
//             final List<Barcode> barcodes = capture.barcodes;
//             final Uint8List? image = capture.image;
//             for(final barcde in barcodes) {
//               print('barcodes found ${barcde.rawValue}');
//             }
//             if (image != null){
//               showDialog(context: context, builder:(context){
//                 return AlertDialog(
//                    title: Text(
//                     barcodes.first.rawValue ?? '',
//                    ),
//                    content: Image(image: MemoryImage(image)),
//                 );
//               });
//             }
//           }
//       ),
//     );
//   }
// }