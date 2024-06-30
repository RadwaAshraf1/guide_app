import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/signup/logic/sign_up_cubit.dart';
import 'package:guide/view/screens/signup/ui/signupform.dart';
import 'package:guide/view/screens/signup/ui/widget/user_signupblockbuilder.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customsizedbox.dart';

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
            verticalSpace(30),
            const SignupForm(),
            verticalSpace(20),
            CustomButon(
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
                      style:
                          TextStyle(color: green1, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            const UserSignupBlocListener(),
          ]),
        ));
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
