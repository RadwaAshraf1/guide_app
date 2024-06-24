import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
// import 'package:guide/view/screens/building/data/model/getonebuilding.dart';
import 'package:guide/view/widgets/customappbar.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key, });

// final Places

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingIcon: LeadingIcon(),
      ),
      body: ListView.builder(
        itemCount: 19,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            border: Border.all(color: black)
            ),
            child: Text('data'),
          
          );
        },),
    );
  }
}