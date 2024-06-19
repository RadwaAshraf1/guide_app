import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/extintion.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_state.dart';

class InsertBuildingBlocListener extends StatelessWidget {
  const InsertBuildingBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<InsertBuildingCubit, InsertBuildingState>(
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
          success: (insertBuildingResponse) {
            context.pop();
            context.pushNamed(splashScreen);
          },
         
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}