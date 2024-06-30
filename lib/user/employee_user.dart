import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/user/employeedetails.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class EmployeeUser extends StatefulWidget {
  const EmployeeUser({super.key});

  @override
  State<EmployeeUser> createState() => _EmployeeUserState();
}

class _EmployeeUserState extends State<EmployeeUser> {
  List<dynamic> _employees = [];
 final int _currentPage = 2;
  final int _pageSize = 5;
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
  void initState() {
    super.initState();
    _fetchEmployees();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text(
          'Employees',
          style: TextStyle(color: white),
        ),
        leadingIcon: LeadingIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
                separatorBuilder: (context, index) => const Divider(color: Colors.transparent,),
                shrinkWrap: true,
                itemCount: _employees.length,
                itemBuilder: (context, index) {
                  final employeeList =_employees[index];
                  return Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: const Border.fromBorderSide(
                          BorderSide(color: green3)),
                    ),
                    child: ListTile(
                      leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child:
                                  Image.asset('assets/images/teaching assistant office.png'))),
                      subtitle: GestureDetector(
                           onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ServicesDetails())),                
                        child: Text(
                          employeeList['employee_job'],
                          style: const TextStyle(color: gray3),
                        ),
                      ),
                      title: Text(employeeList['name']),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
