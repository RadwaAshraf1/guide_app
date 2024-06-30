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
              Text(
                'Recover lost items',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Services Description',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26), color: gray5),
                child: Text(
                  'If you lose something inside the building, you can get it back',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                ),
              ),
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
