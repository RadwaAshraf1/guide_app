import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/widgets/custombutton.dart';


class PasswordRestUser extends StatelessWidget {
  const PasswordRestUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 70),
        child: Column(
          children: [
           _buildIntroText(),
            
            verticalSpace(20),
            _buildConfirmButton(context),
          ],
        ),
      ),
    );
  }

  CustomButonAdmin _buildConfirmButton(BuildContext context) {
    return CustomButonAdmin(
            text: 'Continue',
            onPressed: () {
              Navigator.of(context).pushNamed(userLoginScreen);
            },
          );
  }

  Widget _buildIntroText(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Center(
          child: Image.asset('assets/images/success.png'),
        ),
           const Text('Password Reset!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            const Text('Your password has been successfully reset, click below to continue your access',
                style: TextStyle(
                    color: gray2, fontSize: 16, fontWeight: FontWeight.w400)),
      ],
    );
  }
}