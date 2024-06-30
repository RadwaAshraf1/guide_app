import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/user/employee_user.dart';
import 'package:guide/user/places_user.dart';
import 'package:guide/user/services_user.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {
  List<dynamic> _employees = [];
  List<dynamic> services = [];

  List<dynamic> places = [];
  final int _currentPage = 2;
  final int _pageSize = 5;

  @override
  void initState() {
    super.initState();
    _fetchEmployees();
    fetchPlaces();
    fetchData();
  }
  
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

Future<void> fetchData() async {
  final url = Uri.parse(
      'http://smart-guidance-system.first-meeting.net/api/services?page=1&page_size=5');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    setState(() {
      services = data['data']['data'];
    });
    
  } else {
    throw Exception('Failed to fetch data');
  }
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
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildIntroContainer(context),
            const CustomSizedBox(),
            CustomRow(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PlacesUser()));
              },
              text: 'Places',
            ),
            const CustomSizedBox(),
            _buildMainPoints(),
            const CustomSizedBox(),
            CustomRow(
              text: 'Popular Services',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ServicesUser()));
              },
            ),
            const CustomSizedBox(),
            _buildPopularServices(),
            const CustomSizedBox(),
            CustomRow(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EmployeeUser()));
              },
              text: 'Top Employees',
            ),
            const CustomSizedBox(),
            _buildTopEmployees(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildTopEmployees() {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: _employees.length,
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final employeeItem = _employees[index];
            return Column(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/teaching assistant office.png')),
                ),
                Text(employeeItem['name'], style: const TextStyle(fontSize: 12))
              ],
            );
          }),
    );
  }

  SizedBox _buildPopularServices() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: services.length,
          separatorBuilder: (context, index) => const SizedBox(
                width: 25,
              ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final servicesItem = services[index];
            return Container(
              decoration: BoxDecoration(
                  color: white,
                  border: const Border.fromBorderSide(
                      BorderSide(color: black, width: .5)),
                  borderRadius: BorderRadius.circular(26)),
              width: 135,
              height: 120,
              child: Column(
                
                children: [
               const SizedBox(
                  height: 10,
                ),
                const Icon(
                  Icons.menu_book_outlined,
                  size: 40,
                  color: green3,
                ),
                 const SizedBox(
                  height: 15,
                ),
                Text(
                  servicesItem['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis
                  ),
                ),
              ]),
            );
          }),
    );
  }

  SizedBox _buildMainPoints() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: places.length,
          separatorBuilder: (context, index) => const SizedBox(
                width: 25,
              ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final placesItem = places[index];
            return Column(
              children: [
                SizedBox(
                  width: 140,
                  height: 170,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: Image.asset(
                          'assets/images/teaching assistant office.png',
                          fit: BoxFit.cover)),
                ),
                const SizedBox(height: 5,),
                Text(placesItem['place name'], style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,))
              ],
            );
          }),
    );
  }

  Container _buildIntroContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          gradient: const LinearGradient(colors: [gray5, gray2])),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Explore the building and \n find best way',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Image.asset('assets/images/untitled.png',height: 100,width: 100,)
              ],
            ),
           
            Container(
              width: 150,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26), color: green1),
              child: MaterialButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const Guide(),
                  //   ),
                  // );
                },
                child: const Text(
                  'Guide Me',
                  style: TextStyle(color: white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 15,
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        MaterialButton(
          onPressed: onPressed,
          child: const Text(
            'see all',
            style: TextStyle(color: green1),
          ),
        ),
      ],
    );
  }
}
