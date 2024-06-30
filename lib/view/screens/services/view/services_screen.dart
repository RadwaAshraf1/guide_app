import 'dart:convert';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:guide/view/widgets/customappbar.dart';


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

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text('Services',
        style: TextStyle(color: white),),
        leadingIcon: LeadingIcon(
          
        ),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data as List<dynamic>;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Services",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                     verticalSpace(10),
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(color: Colors.transparent),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        // height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: black,width: 1),
          borderRadius: BorderRadius.circular(16),
          color: white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item['name']),
            verticalSpace(6),
            //  Text(item['description']),
           
          ],
        ),
      ),
    
    );
                      },
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
