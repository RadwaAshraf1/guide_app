import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/building/logic/onebuildinglogic/onebuilding_cubit.dart';
import 'package:guide/view/screens/building/logic/onebuildinglogic/onebuilding_state.dart';

class OneBuildingBlockBuilder extends StatelessWidget {
  const OneBuildingBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OneBuildingCubit, OneBuildingState>(
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
          success: (oneBuildingData) {
            var oneBuildingDatalist = oneBuildingData?.data;
            return Column(
              
              children: [
              SizedBox(
                  width: 80,
                  height: 80,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                     'assets/images/logo.png',
                      ))),
              verticalSpace(50),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Building Description',
                     style: TextStyle(color: green1),
                     textAlign: TextAlign.start,
                    ),
                    verticalSpace(10),
                    Text(
                  oneBuildingDatalist!.description.toString(),),
                  verticalSpace(10),
                  const Text('Building Address',
                  style: TextStyle(color: green1),
                  textAlign: TextAlign.start,
                 ),
                 verticalSpace(10),
                 Text(
               oneBuildingDatalist.address.toString(),)


                  ],
                ),
              ),
              // verticalSpace(10),
            //  Column(
            //    crossAxisAlignment: CrossAxisAlignment.start,
            //    children: [
            //      const Text('Building Address',
            //       style: TextStyle(color: green1),
            //       textAlign: TextAlign.start,
            //      ),
            //      verticalSpace(10),
            //      Text(
            //    oneBuildingDatalist.address.toString(),)
            //    ],
            //  ),
            ]);
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

// Widget buildBlocWidget() {
//      return BlocBuilder<OneBuildingCubit, OneBuildingState>(
//       buildWhen: (previous, current) =>
//           current is Success || current is Error,
//       builder: (context, state) {
//          return state.maybeWhen(
//            loading: () { 
//           showDialog(
//               context: context,
//               builder: (context) => const Center(
//                 child: CircularProgressIndicator(
//                   color: green2
//                 ),
//               ),
//             );
//             },
//             success: (oneBuildingData) {
//               var oneBuildingDatalist = oneBuildingData;
//               return Column(
                
            
//             children: [
//               SizedBox(
//                   width: 80,
//                   height: 80,
//                   child: ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child:  Image.asset(
//                          oneBuildingDatalist!.photo,
//                       ))),
//               verticalSpace(50),
//                CustomListTile(
//                 text: 'Building Description',
//                 subtitle: Text(
//                   oneBuildingDatalist.description,
//                   style: const TextStyle(color: green2),
//                 ),
//               ),
          
//                CustomListTile(
//                 text: 'Building Address',
//                 subtitle: Text(
//                   oneBuildingDatalist.address,
//                   style:const TextStyle(color: green2),
//                 ),
//               ),
//             ]
//               );
//             },
//              error: (error) {
//             setupErrorState(context, error);
//           }, orElse: () { 
//             return const SizedBox.shrink();
//            },
//         );
//       },
//           );
//       }
      