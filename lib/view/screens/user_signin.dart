import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customsizedbox.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class SignInUser extends StatefulWidget {
  const SignInUser({super.key});

  @override
  State<SignInUser> createState() => _SignInUserState();
}

class _SignInUserState extends State<SignInUser> {
  bool visible = true;
  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          toolbarHeight: 200,
          actions: const [CustomSizedBox()],
        ),
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.mail,
                      color: gray2,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    passwordInvisible: true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: password,
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: gray2,
                    ),
                    suffixIcon: const Icon(Icons.visibility_off, color: gray2),
                  ),
                const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(forgetScreen);
                    },
                    child: const Text(
                      'Forget your password?',
                      style: TextStyle(color: green1),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomButonAdmin(
                      text: 'Sign in',
                      // onPressed: () {
                      //   Map creds = {
                      //     'email': email.text,
                      //     'password': password.text,
                      //     'device': 'mobile'
                      //   };
                      //   if (formKey.currentState!.validate()) {
                      //     Provider.of<Auth>(context, listen: false)
                      //         .login(creds: creds);
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) =>
                      //             const CustomBtnNavigationUser(),
                      //       ),
                      //     );
                      //   }
                      // }
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(
                        "Do not have an account?",
                        style: TextStyle(color: gray1.withOpacity(.5)),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(userSignUpScreen);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: green1,fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ]),
          ),
        ));
  }
}
