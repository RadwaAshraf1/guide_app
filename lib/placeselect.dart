import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:http/http.dart' as http;


Future<List<dynamic>> fetchPlaces() async {
  final response = await http.get(Uri.parse('http://smart-guidance-system.first-meeting.net/api/places'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['places'];
  } else {
    throw Exception('Failed to fetch places');
  }
}

Future<List<dynamic>> fetchData() async {
  final url = Uri.parse(
      'http://smart-guidance-system.first-meeting.net/api/services?page=1&page_size=5');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['data']['data'];
  } else {
    throw Exception('Failed to fetch data');
  }
}


class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PlacesScreenState createState() => _PlacesScreenState();
}


class _PlacesScreenState extends State<PlacesScreen> {
  List<dynamic> places = [];
  List<dynamic> services = [];
  String? selectedPlace1;
  String? selectedPlace2;
  String? selectedServices;

  @override
  void initState() {
    super.initState();
    fetchPlacesData();
    fetchServicesData();
  }

  Future<void> fetchPlacesData() async {
    try {
      final fetchedPlaces = await fetchPlaces();
      setState(() {
        places = fetchedPlaces;
      });
    } catch (e) {
      print('Error fetching places: $e');
    }
  }

  Future<void> fetchServicesData() async {
    try {
      final fetchedServices= await fetchData();
      setState(() {
        services = fetchedServices;
      });
    } catch (e) {
      print('Error fetching places: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const CustomAppBar(
        leadingIcon: LeadingIcon(),
        // actions: [
        //   ActionIcon(
        //     onPressed: () {
        //       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQrCodeScreen()));},
        //     icon: Icons.qr_code_scanner_rounded,
        //   )
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 60,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: gray5,
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black12,
                        offset: Offset(0, 15))
                  ]),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: const Text('Current Location'),
                  value: selectedPlace1,
                  items: places.map((place) {
                    return DropdownMenuItem<String>(
                      value: place['place name'],
                      child: Text(place['place name']),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedPlace1 = value;
                    });
                    // Handle the selected value
                    print('Selected place: $value');
                  },
                ),
              ),
            ),SizedBox(height: 15,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                  color: gray5,
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black12,
                        offset: Offset(0, 15))
                  ]),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: const Text('Destination'),
                  value: selectedPlace2,
                  items: places.map((place) {
                    return DropdownMenuItem<String>(
                      value: place['place name'],
                      child: Text(place['place name']),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedPlace2 = value;
                    });
                    // Handle the selected value
                    print('Selected place: $value');
                  },
                ),
              ),
            ),SizedBox(height: 15,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
                  color: gray5,
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black12,
                        offset: Offset(0, 15))
                  ]),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: const Text('Select a place'),
                  value: selectedServices,
                  items: services.map((services) {
                    return DropdownMenuItem<String>(
                      value: services['name'],
                      child: Text(services['name']),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedServices = value;
                    });
                    // Handle the selected value
                    print('Selected place: $value');
                  },
                ),
              ),
            ),SizedBox(height: 15,),
          const SizedBox(
              height: 70,
            ),
            const CustomButon(text: 'Draw Route')
          ],
        ),
      ),
    );
  }
}