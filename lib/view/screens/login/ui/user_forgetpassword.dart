import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/app_regrex.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class ForgetPasswordUser extends StatelessWidget {
  ForgetPasswordUser({super.key});

  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      elevation: 0,
      iconTheme: const IconThemeData(
        color: black),),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 70),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIntroText(),
            const SizedBox(
              height: 30,
            ),
            _buildEmailFormFIeld(),
            const SizedBox(
              height: 30,
            ),
            _buildConfirmButton(context)
          ],
        ),
              ),
      ));
  }

  CustomButonAdmin _buildConfirmButton(BuildContext context) {
    return CustomButonAdmin(
          text: 'Confirm',
          onPressed: () {
            Navigator.of(context).pushNamed(otpScreen);
           
          },
        );
  }

  CustomTextFormField _buildEmailFormFIeld() {
    return CustomTextFormField(
       validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          // keyboardType: TextInputType.emailAddress,
          // controller: email,
          labelText: 'Email',
          prefixIcon: const Icon(
            Icons.mail,
            color: gray2,
          ),
        );
  }
  Widget _buildIntroText(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset('assets/images/forget.png'),
        ),
        const Text('Forgot your password?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          const Text('Enter your email to reset it!',
              style: TextStyle(
                  color: gray2, fontSize: 16, fontWeight: FontWeight.w400)),

      ],
    );
  }
}
