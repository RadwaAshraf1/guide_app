import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/extintion.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/login/logic/login_cubit.dart';
import 'package:guide/view/screens/login/logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: green2
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(exampleScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: const Text(
          "Try again",
          textAlign: TextAlign.center,
          style: TextStyle(color: gray1,fontSize: 15,fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text(
              'Got it',
              style: TextStyle(color: gray1,fontSize: 14,fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}