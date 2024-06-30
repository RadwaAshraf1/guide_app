import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customtextformfield.dart';


class SetNewPasswordUser extends StatelessWidget {
  const SetNewPasswordUser({super.key});

  // final TextEditingController password = TextEditingController();
  // final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      elevation: 0,
      iconTheme: const IconThemeData(
        color: black),),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 70),
          child: Column(
            children: [
              __buildIntroText(),
              verticalSpace(30),
              CustomTextFormField(
                 validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
                isObscureText: true,
                // keyboardType: TextInputType.visiblePassword,
                // controller: password,
                labelText: 'Password',
                prefixIcon: const Icon(
                  Icons.lock,
                  color: gray2,
                ),
                suffixIcon: const Icon(Icons.visibility_off, color: gray2),
              ),
              verticalSpace(20),
              CustomTextFormField(
                   validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
                isObscureText: true,
                // keyboardType: TextInputType.visiblePassword,
                // controller: confirmPassword,
                labelText: 'Confirm Password',
                prefixIcon: const Icon(
                  Icons.lock,
                  color: gray2,
                ),
                suffixIcon: const Icon(Icons.visibility_off, color: gray2),
              ),
               verticalSpace(30),
              _buildConfirmButton(context)
            ],
          ),
        ),
      ),
    );
  }

  CustomButon _buildConfirmButton(BuildContext context) {
    return CustomButon(
            text: 'Confirm',
            onPressed: () {
              Navigator.of(context).pushNamed(successPasswordScreen);
            },
          );
  }

  Widget __buildIntroText() {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Center(
          child: Image.asset('assets/images/forget.png'),
        ),
        const Text('Set your new password',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
        const Text(
            'Your new password should be  different from passwords previously used',
            style: TextStyle(
                color: gray2, fontSize: 16, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
