import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/view/screens/login/logic/login_cubit.dart';
import 'package:guide/view/screens/login/ui/widgets/loginblocklistener.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customsizedbox.dart';

import 'package:guide/view/widgets/email_password.dart';

class SignInUser extends StatelessWidget {
  const SignInUser({super.key});

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
          child: ListView(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                const EmailAndPassword(),
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
                  height:40,
                ),
                 CustomButonAdmin(
                    text: 'Sign in',
                    onPressed: () {
                        validateThenDoLogin(context);
                      },
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
                ),
                 const LoginBlocListener(),
              ]),
        ));
  }void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
  

