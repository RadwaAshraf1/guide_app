// import 'package:flutter/material.dart';
// import 'package:guide/constants/colots.dart';
// import 'package:guide/view/widgets/customappbar.dart';

// class EmployeeDetails extends StatelessWidget {
//   const EmployeeDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(
//         leadingIcon: LeadingIcon(),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 SizedBox(
//                   width: 120,
//                   height: 120,
//                   child: ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child: const CircleAvatar(
//                         backgroundColor: gray5,
//                       )),
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                 'Employee Id',
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(26), color: gray5),
//                 child: const Text(
//                   '6',
//                   style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
//                 ),),
//                 const SizedBox(height: 20
//                 ,),
//                     const Text(
//                 'Employee Name',
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(26), color: gray5),
//                 child: const Text(
//                   'Prof.Dr. Ehab Rushdy',
//                   style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
//                 ),),
//                 const SizedBox(height: 20
//                 ,),
//                     const Text(
//                 'Employee Job',
//                 style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(26), color: gray5),
//                 child: const Text(
//                   'Vice Dean of the College for Environmental Affairs and Community Service',
//                   style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
//                 ),),
//                 const SizedBox(height: 20
//                 ,),
//                   Spacer(),
//               Align(
//       alignment: Alignment.centerRight,
//       child: ElevatedButton(
//         onPressed: (){},
//         style: ElevatedButton.styleFrom(
//             minimumSize: const Size(110, 50),
//             backgroundColor: green1,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(26),
//             )),
//         child: const Text(
//           'Guide',
//           style: TextStyle(color: white, fontSize: 18),
//         ),
//       ),
//     )
//                   ],
//                 )
//                 ,
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/placeselect.dart';
import 'package:guide/view/screens/services/data/models/getallservcies.dart';
import 'package:guide/view/widgets/customappbar.dart';

class ServicesDetails extends StatelessWidget {
  // const ServicesDetails({super.key});

  // final Service servicesData;

  const ServicesDetails({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          leadingIcon: LeadingIcon(),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: 
                      SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const CircleAvatar(
                        backgroundColor: gray5,
                      )),
                ),
                    ),
                    const SizedBox(
                height: 15,
              ),
                    const Text(
                'Employee Id',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26), color: gray5),
                child: const Text(
                  '6',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),),
                const SizedBox(height: 20
                ,),
                    const Text(
                'Employee Name',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26), color: gray5),
                child: const Text(
                  'Prof.Dr. Ehab Rushdy',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),),
                const SizedBox(height: 20
                ,),
                    const Text(
                'Employee Job',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26), color: gray5),
                child: const Text(
                  'Vice Dean of the College for Environmental Affairs and Community Service',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),),
                const SizedBox(height: 20
                ,),
              Spacer(),
              Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlacesScreen()));
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(110, 50),
            backgroundColor: green1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(26),
            )),
        child: const Text(
          'Guide',
          style: TextStyle(color: white, fontSize: 18),
        ),
      ),
    )
            ],
          ),
        ));
  }
}

