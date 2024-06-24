import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/extintion.dart';
import 'package:guide/view/screens/routes/logic/route_cubit.dart';
import 'package:guide/view/screens/routes/logic/route_state.dart';

class RouteBlockListner extends StatelessWidget {
  const RouteBlockListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RouteCubit, RouteState>(
      listenWhen: (previous, current) =>
          current is RouteLoading || current is RouteSuccess || current is RouteError,
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
          success: (insertRouteResponse) {
            context.pop();
            context.pushNamed(splashScreen);
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