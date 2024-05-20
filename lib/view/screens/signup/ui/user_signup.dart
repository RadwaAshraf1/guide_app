import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/view/screens/signup/logic/sign_up_cubit.dart';
import 'package:guide/view/screens/signup/ui/widget/signup_blocklistener.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customsizedbox.dart';
import 'package:guide/view/screens/signup/ui/widget/signupform.dart';


// ignore: must_be_immutable
class SignupUser extends StatelessWidget {
   const SignupUser({super.key});

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
             CustomButonAdmin(
                text: 'Sign up',
                  onPressed: () {
                        validateThenDoSignup(context);
                      },

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
                                const SignupBlocListener(),

          ]),
        ));
  }
  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
}}
  
