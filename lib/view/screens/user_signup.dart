import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customsizedbox.dart';
import 'package:guide/view/widgets/customtextformfield.dart';
import 'package:guide/view/widgets/signupform.dart';


// ignore: must_be_immutable
class SignupUser extends StatelessWidget {
   SignupUser({super.key});

  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          toolbarHeight: 200,
          actions: const [CustomSizedBox()],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(children: [
            const SizedBox(
              height: 30,
            ),
            const SignupForm(),
            const SizedBox(
              height: 20,
            ),
            const CustomButonAdmin(
                text: 'Sign up',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  "Already have an account?",
                  style: TextStyle(color: gray1.withOpacity(.5)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(userLoginScreen);
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: green1,fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ]),
        ));
  }
}
