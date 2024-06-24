import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/building/view/widgets/onebuildingblockbuildrt.dart';
import 'package:guide/view/widgets/customappbar.dart';

class OneBuildingScreen extends StatefulWidget {

  const OneBuildingScreen({super.key, 
  // required this.oneBuilding
  });

  @override
  State<OneBuildingScreen> createState() => _OneBuildingScreenState();
}

class _OneBuildingScreenState extends State<OneBuildingScreen> {


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: const CustomAppBar(
        leadingIcon: LeadingIcon(),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            
            children:  [
         const OneBuildingBlockBuilder(),
          verticalSpace(10),
         GestureDetector(
          child: Container(
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            color: white
            ),
            child: const Padding(padding: EdgeInsets.all(16),
            child: Text('Places'),),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(placeScreen);
          },
         ),
         verticalSpace(10),
         GestureDetector(
          child: Container(
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            color: white
            ),
            child: const Padding(padding: EdgeInsets.all(16),
            child: Text('Regions'),),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(placeScreen);
          },
         ),
         verticalSpace(10),
         GestureDetector(
          child: Container(
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            color: white
            ),
            child: const Padding(padding: EdgeInsets.all(16),
            child: Text('Routing Information'),),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(placeScreen);
          },
         ),
         verticalSpace(10),
         GestureDetector(
          child: Container(
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            color: white
            ),
            child: const Padding(padding: EdgeInsets.all(16),
            child: Text('Services'),),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(placeScreen);
          },
         ),
         verticalSpace(10),
         GestureDetector(
          child: Container(
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            color: white
            ),
            child: const Padding(padding: EdgeInsets.all(16),
            child: Text('Employees'),),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(placeScreen);
          },
         ),
             
            ],
          )),
    );
  }
}