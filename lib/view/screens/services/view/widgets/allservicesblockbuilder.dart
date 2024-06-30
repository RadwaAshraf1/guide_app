// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:guide/constants/colots.dart';
// import 'package:guide/view/screens/services/logic/allservices_cubit.dart';
// import 'package:guide/view/screens/services/logic/allservices_state.dart';
// import 'package:guide/view/screens/services/view/widgets/allserviceslistview.dart';

// class AllServicesBlockBuilder extends StatelessWidget {
//   const AllServicesBlockBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AllServicesCubit, AllServicesState>(
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
//           success: (allServices) {
//           var getallServicesList = allServices.data;
//             return  setupSuccess(getallServicesList);
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
  
//    setupSuccess(getallServicesList) => AllServicesListView(serviceData: getallServicesList?? 'NAME');
// }