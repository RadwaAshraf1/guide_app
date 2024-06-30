import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegionsPage extends StatefulWidget {
  const RegionsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegionsPageState createState() => _RegionsPageState();
}

class _RegionsPageState extends State<RegionsPage> {
  List<Map<String, dynamic>> _regions = [];

  @override
  void initState() {
    super.initState();
    _fetchRegionsData();
  }

  Future<void> _fetchRegionsData() async {
    final url =
        Uri.parse('http://smart-guidance-system.first-meeting.net/api/region');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      setState(() {
        _regions = List<Map<String, dynamic>>.from(data['Regions']);
      });
    } else {
      print('Error fetching regions data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text('Regions',
        style: TextStyle(color: white),),
        leadingIcon: LeadingIcon(),
      ),
      body: _regions.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Regions",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    ListView.separated(
                      separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.transparent),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: _regions.length,
                      itemBuilder: (context, index) {
                        final region = _regions[index];
                        return GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            width: double.infinity,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: black, width: 1),
                              borderRadius: BorderRadius.circular(16),
                              color: white,
                            ),
                            child: Text('${region['region name']}'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
