import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/extintion.dart';
import 'package:guide/user/profile/logic/updateprofile_cubit.dart';
import 'package:guide/user/profile/logic/updateprofile_state.dart';

class UpdateProfileBlockListner extends StatelessWidget {
  const UpdateProfileBlockListner({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<UpdateProfileCubit, UpdateProfileState>(
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
          success: (updateResponse) {
            context.pop();
            // context.pushNamed(getProfileScreen);
            showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Updated successfully'),
          // content: const SingleChildScrollView(
          //   child: Text('Congratulations, you have signed up successfully!'),
          // ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: white, backgroundColor: green3, disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(getProfileScreen);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      });
          },
          
         
        );
      },
      child: const SizedBox.shrink(),

    );
    
  }}