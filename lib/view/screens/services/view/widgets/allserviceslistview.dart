

// import 'package:flutter/material.dart';
// import 'package:guide/constants/colots.dart';
// import 'package:guide/helper/spacing.dart';
// import 'package:guide/view/screens/services/data/models/getallservcies.dart';

// class AllServicesListView extends StatelessWidget {
//   const AllServicesListView({super.key, required this.serviceData});

//  final List<ServicesData>? serviceData;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
        
//         itemCount: serviceData!.length,
//         itemBuilder: (context, index) {
          
//           return ServicesistViewItem(servicesDataItem: serviceData?[index]);
//         },),
//     );
//   }
// }

// class ServicesistViewItem extends StatelessWidget {
//   const ServicesistViewItem({
//     super.key, required this.servicesDataItem,
//   });
//   final ServicesData? servicesDataItem;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         width: double.infinity,
//         height: 60,
//         decoration: BoxDecoration(
//           border: Border.all(color: black,width: 1),
//           borderRadius: BorderRadius.circular(16),
//           color: white,
//         ),
//         child: Column(
//           children: [
//             Text(servicesDataItem?.name ?? 'name'),
//             verticalSpace(6),
           
//           ],
//         ),
//       ),
    
//     );
//   }
// }