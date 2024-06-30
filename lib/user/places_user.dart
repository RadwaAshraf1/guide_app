import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PlacesUser extends StatefulWidget {
  const PlacesUser({super.key});

  @override
  State<PlacesUser> createState() => _PlacesUserState();
}

class _PlacesUserState extends State<PlacesUser> {
    List<dynamic> places = [];
    
Future<void> fetchPlaces() async {
  final response = await http.get(
      Uri.parse('http://smart-guidance-system.first-meeting.net/api/places'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    setState(() {
      places =data['places'];
    });
   
  } else {
    throw Exception('Failed to fetch places');
  }
}

  @override
  void initState() {
    super.initState();
    fetchPlaces();
  }
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      appBar: const CustomAppBar(
        leadingIcon: LeadingIcon(),
        text: Text('Places',
            style: TextStyle(
              color: white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: places.length,
          itemBuilder: (context, index) {
            final placesItem =places[index];
            return Column(
              children: [
                SizedBox(
                  width: 170,
                  height: 170,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: Image.asset('assets/images/teaching assistant office.png',
                          fit: BoxFit.cover)),
                ),
                Text(placesItem['place name'])
              ],
            );
          },
        ),
      ),
    );
  }
}
