import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/view/widgets/customappbar.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        actions: [
          ActionIcon(
            icon: Icons.qr_code_scanner_rounded,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {},
          backgroundColor: green3,
          child: IconButton(
            onPressed: () {
               Navigator.of(context).pushNamed(oneBuildingScreen);
            },
            icon: const Icon(Icons.add),
            color: white,
          )),
    );
  }
}
