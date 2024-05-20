import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(elevation: 0,
          iconTheme: const IconThemeData(color: black),),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 70),
          child: Column(
            children: [
              _buildIntroText(),
              verticalSpace(40),
              _buildPinVerifiedCode(context),
               verticalSpace(40),
              _buildConfirmButton(context)
            ],
          ),
        ),
      ),
    ));
  }

  CustomButonAdmin _buildConfirmButton(BuildContext context) {
    return CustomButonAdmin(
            text: 'Continue',
            onPressed: () =>Navigator.of(context).pushNamed(resetPasswordScreen)
          );
  }

  Widget _buildIntroText() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           Center(
          child: Image.asset('assets/images/forget.png'),
        ),
        const Text(
          'Verification Code',
          style: TextStyle(
              color: black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'A Five-Digit code should have come to your email address that you indicated.',
          style: TextStyle(color: gray2, fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildPinVerifiedCode(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: black,
      keyboardType: TextInputType.number,
      length: 5,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 50,
        borderWidth: 1,
        activeColor: green3,
        inactiveColor: green3,
        inactiveFillColor: white,
        activeFillColor: green4,
        selectedColor: green3,
        selectedFillColor: white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: white,
      enableActiveFill: true,
      onCompleted: (submitedCode) {
        // otpCode = submitedCode;
        // ignore: avoid_print
        print("Completed");
      },
      onChanged: (value) {
        // ignore: avoid_print
        print(value);
      },
    );
  }
}
