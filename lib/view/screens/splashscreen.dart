import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/widgets/custombutton.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  verticalSpace(120),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                  ),
                  verticalSpace(180),
                  const Text('Continue as',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  verticalSpace(15),
                  const CustomButonAdmin(
                    text: 'Admin',),
                 
                  verticalSpace(10),
                   CustomButonAdmin(
                    text: 'User',
                    onPressed: () {
                     Navigator.of(context).pushNamed(userLoginScreen);    
                    },),
                ]),
          ),
        ),
      ),
    );
  }
}
