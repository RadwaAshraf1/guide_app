import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/user/profile/logic/getprofile_logic.dart';
import 'package:guide/user/profile/logic/getprofile_state.dart';

class GetProfileBlockBuilder extends StatelessWidget {
  const GetProfileBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileCubit, GetProfileState>(
      buildWhen: (previous, current) => current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const SizedBox(
              height: 100,
              child: Center(
                child: CircularProgressIndicator(color: green2),
              ),
            );
          },
          success: (getProfile) {
           
            return  Container(
              padding: const EdgeInsets.all(16),
              height: 90,
               decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: white,
                boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black12,
                        offset: Offset(0, 15))
                  ]
              ),
              child:  Row(
      children: [
        SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child:  CircleAvatar(
                       backgroundImage: AssetImage(getProfile.image ?? ''),
                      ))),
      const SizedBox(width: 20,),
      Text(getProfile.username ?? 'username'),
      ],

      
    ));
          },
          error: (error) {
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
 