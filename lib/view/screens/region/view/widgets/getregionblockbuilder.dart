import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/screens/region/logic/getregion_cubit.dart';
import 'package:guide/view/screens/region/logic/getregion_state.dart';
import 'package:guide/view/screens/region/view/widgets/getregions_listview.dart';

class GetRegionBlockBuilder extends StatelessWidget {
  const GetRegionBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<GetRegionCubit, GetRegionState>(
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
          success: (getRegion) {
          var getRegionList = getRegion?.regions;
           return GetRegionListView(getRegion: getRegionList ?? [],);
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

   setupSuccess(getRegionList) => GetRegionListView(getRegion: getRegionList ,);
}

// class GenerateQrCode extends StatefulWidget {
//   const GenerateQrCode({super.key});
  

//   @override
//   State<GenerateQrCode> createState() => _GenerateQrCodeState();
// }

// class _GenerateQrCodeState extends State<GenerateQrCode> {

// Regions? regions;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
//         body: Padding(padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextField(
//               onSubmitted: (value){
//                 setState(() {
//                   qrData = value;
//                 });
//               },
//             ),
//             if (qrData !=null) PrettyQrView.data(data: qrData!)
//           ],
//         ),),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:guide/constants/colots.dart';
// import 'package:guide/view/screens/region/logic/getregion_cubit.dart';
// import 'package:guide/view/screens/region/logic/getregion_state.dart';
// import 'package:guide/view/screens/region/view/widgets/getregions_listview.dart';

// class GetRegionBlockBuilder extends StatelessWidget {
//   const GetRegionBlockBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  BlocBuilder<GetRegionCubit, GetRegionState>(
//       buildWhen: (previous, current) => current is Success || current is Error,
//       builder: (context, state) {
//         return state.maybeWhen(
//           loading: () {
//             return const SizedBox(
//               height: 100,
//               child: Center(
//                 child: CircularProgressIndicator(color: green2),
//               ),
//             );
//           },
//           success: (getRegion) {
//           var getRegionList = getRegion?.regions;
//            return GetRegionListView(getRegion: getRegionList ,);
//           },
//           error: (error) {
//             return const SizedBox.shrink();
//           },
//           orElse: () {
//             return const SizedBox.shrink();
//           },
//         );
//       },
//     );
//   }

//    setupSuccess(getRegionList) => GetRegionListView(getRegion: getRegionList ,);
// }