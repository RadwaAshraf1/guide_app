import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';


class CustomButonAdmin extends StatelessWidget {
  const CustomButonAdmin({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
   
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: green3,
        ),
        width: double.infinity,
        height: 52,
        child:
        //  Consumer<Auth>(builder: (context, auth, child) {
        //   if (auth.authrntication) {
        //     return
             MaterialButton(
              animationDuration: const Duration(seconds: 3),
              onPressed:onPressed,
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: 'assets/fonts/Inter-Regular.ttf',
                  color: white,
                  fontSize: 18,
                ),
              ),
            ),
          // }else {
          //   return MaterialButton(
          //     animationDuration: const Duration(seconds: 3),
          //     onPressed: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => const SignupAdmin()),
          //             );
          //           },
          //     child: Text(
          //       text,
          //       style: const TextStyle(
          //         fontFamily: 'assets/fonts/Inter-Regular.ttf',
          //         color: white,
          //         fontSize: 18,
          //       ),
          //     ),
            );
          }
        }

