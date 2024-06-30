import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/place/view/widgets/getplacesblockbuilder.dart';
// import 'package:guide/view/screens/building/data/model/getonebuilding.dart';
import 'package:guide/view/widgets/customappbar.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key, });

// final Places

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(
        text: Text('Places',
        style: TextStyle(color: white),),
        leadingIcon: LeadingIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Places",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            verticalSpace(10),
            const GetPlacesBlockBuilder(),
          ],
        )),
    );
  }
}