// class ApiClass {
//   Data? data;

//   ApiClass({
//     this.data,
//   });

//   ApiClass.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }
// }

// class Data {
//   List<Data>? data;

//   Data({
//     this.data,
//   });

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(Data.fromJson(v));
//       });
//     }
//   }
// }

// class DataItems {
//   String? id;
//   String? placeId;
//   String? name;
//   String? description;

//   DataItems({this.id, this.placeId, this.name, this.description});

//  factory DataItems.fromJson(Map<String, dynamic> json) {
//   return DataItems(
//     id : json['id'],
//     placeId : json['place_id'],
//     name : json['name'],
//     description : json['description']
//   );
    
//   }
// }
// import 'dart:convert';

// import 'package:guide/constants/colots.dart';
// import 'package:guide/helper/spacing.dart';
// import 'package:guide/view/screens/services/view/gttp.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:guide/view/screens/place/view/widgets/getplacesblockbuilder.dart';
// import 'package:guide/view/screens/services/view/widgets/allservicesblockbuilder.dart';
// import 'package:guide/view/widgets/customappbar.dart';

// class ServicesScreen extends StatefulWidget {
//   const ServicesScreen({super.key});

//   @override
//   State<ServicesScreen> createState() => _ServicesScreenState();
// }

// class _ServicesScreenState extends State<ServicesScreen> {
//   late DataItems dataItems;
//   myApi() {
//     // isLoading = false;
//     GetHttpServices().fetchApi().then((value) {
//       setState(() {
//         dataItems = value;
//         // isLoading = true;
//       });
//     });
//   }

//   @override
//   void initState() {
//     // dataItems = DataItems(name: '', description: '', id: '', placeId: '');
//     myApi();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(
//         leadingIcon: LeadingIcon(),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             const Text(
//               "Services",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             Expanded(
//               child:MyWidget(dataItems: dataItems,)
//             )
//           ])),
//     );
//   }
// }
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key, required this.dataItems});
// final DataItems dataItems;
//   @override
//   Widget build(BuildContext context) {
//     return  ListView.builder(
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     child: Container(
//                       padding: const EdgeInsets.all(16),
//                       width: double.infinity,
//                       height: 70,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: black, width: 1),
//                         borderRadius: BorderRadius.circular(16),
//                         color: white,
//                       ),
//                       child: Column(
//                         children: [
//                           Text(dataItems.name.toString()),
//                           verticalSpace(6),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//   }
// }
// class GetHttpServices {
//   fetchApi() async {
//     final response = await http.get(
//       Uri.parse(
//           "http://smart-guidance-system.first-meeting.net/api/services?page=1&page_size=5"),
//     );
//     // now we can cange latitude and longitude and let's see how it perfrom.
//     try {
//       if (response.statusCode == 200) {
//         var json = jsonDecode(response.body);
//         return DataItems.fromJson(json);
//       } else {
//         throw Exception('Failed to load Weather data');
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
