// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;



class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EmployeeListState createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeScreen> {
  List<dynamic> _employees = [];
  final int _currentPage = 2;
  final int _pageSize = 5;

  @override
  void initState() {
    super.initState();
    _fetchEmployees();
  }

  Future<void> _fetchEmployees() async {
    final url = Uri.parse(
        'http://smart-guidance-system.first-meeting.net/api/employees?page=$_currentPage&page_size=$_pageSize');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _employees = data['data']['data'];
      });
    } else {
      throw Exception('Failed to fetch employees');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text('Employee',
        style: TextStyle(color: white),),
        leadingIcon: LeadingIcon(),
      ),
      body: _employees.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(color: Colors.transparent),
                itemCount: _employees.length,
                itemBuilder: (context, index) {
                  final employee = _employees[index];
                  return GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      // height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: green1, width: 1),
                        borderRadius: BorderRadius.circular(16),
                        color: white,
                      ),
                      child: ListTile(
                        leading: employee['photo'] != null
                            ? Image.network(
                                'http://smart-guidance-system.first-meeting.net/public/${employee['photo']}',
                                width: 50,
                                height: 50,
                              )
                            : SizedBox(),
                        title: Text(employee['name'],style: TextStyle(fontWeight: FontWeight.w500 ,fontSize: 14)),
                        // subtitle: Text(employee['employee_job']),
                      ),
                    ),
                  );
                },
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
