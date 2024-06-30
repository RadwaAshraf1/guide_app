import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:guide/view/widgets/customappbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>with SingleTickerProviderStateMixin {
  String selectedButton = 'allTime';
  String selectedButton2 = 'allTime';
  late TabController _tabController;
  bool showStatistics = true; // Add a variable to control the visibility of the big container
  List<charts.Series<dynamic, DateTime>> _chartSeries = []; //new
  List<charts.Series<dynamic, DateTime>> _chartSeries2 = []; //new for lin chart(2)
  List<charts.Series<OrdinalSales, String>> _barChartData = [];
  int totalUsers = 0;
  int totalEmployees = 0;
  int totalServices = 0;
  Future<void> _fetchBarChartData() async {
    final url =
        'http://smart-guidance-system.first-meeting.net/api/admin-dashboard';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final apiResponse = json.decode(response.body);

      final List<Map<String, dynamic>> topPopularLocations =
          List<Map<String, dynamic>>.from(
              apiResponse['adminStatistics']['topPopularLocations']);

      final List<OrdinalSales> chartData = topPopularLocations.map((data) {
        return OrdinalSales(
          data['name'] as String,
          data['visits_count'] as int,
        );
      }).toList();
      final adminStatistics = apiResponse['adminStatistics'];
      setState(() {
        _barChartData = [
          charts.Series<OrdinalSales, String>(
            id: 'Sales',
            domainFn: (OrdinalSales sales, _) => sales.name,
            measureFn: (OrdinalSales sales, _) =>
                sales.visits_count, // Use visits_count
            data: chartData,
          ),
        ];
        totalUsers = adminStatistics['totalUsers'];
        totalEmployees = adminStatistics['totalEmployees'];
        totalServices = adminStatistics['totalServices'];
      });
    } else {
      throw Exception('Failed to fetch data from the API');
    }
  }

  void fetchData(String timePeriod) async {
    String apiUrl =
        'http://smart-guidance-system.first-meeting.net/api/admin-dashboard';

    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List<dynamic> chartData;
      if (timePeriod == 'All Time') {
        chartData = data['adminStatistics']['newUsersAllTime'];
      } else if (timePeriod == 'Last Six Months') {
        chartData = data['adminStatistics']['newUsersLastSixMonths'];
      } else if (timePeriod == 'Last Month') {
        chartData = data['adminStatistics']['newUsersLastMonth'];
      } else {
        print('Invalid time period');
        return;
      }

      List<ChartData> formattedData = chartData
          .map((entry) =>
              ChartData(DateTime.parse(entry['date']), entry['users_count']))
          .toList();

      setState(() {
        _chartSeries = [
          charts.Series<ChartData, DateTime>(
            id: 'User Count',
            data: formattedData,
            domainFn: (ChartData entry, _) => entry.date,
            measureFn: (ChartData entry, _) => entry.usersCount,
          )
        ];
      });
    } else {
      print('Error fetching data. Status code: ${response.statusCode}');
    }
  }
  //new for lin chart(2)
  void fetchData2(String timePeriod2) async {
    String apiUrl = 'http://smart-guidance-system.first-meeting.net/api/admin-dashboard';

    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List<dynamic> chartData2;
      if (timePeriod2 == 'All Time') {
        chartData2 = data['adminStatistics']['allTimeVisits'];
      } else if (timePeriod2 == 'Last Six Months') {
        chartData2 = data['adminStatistics']['lastSixMonthsVisits'];
      } else if (timePeriod2 == 'Last Month') {
        chartData2 = data['adminStatistics']['lastMonthVisits'];
      } else {
        print('Invalid time period');
        return;
      }

      List<ChartData2> formattedData = chartData2
          .map((entry) =>
              ChartData2(DateTime.parse(entry['date']), entry['total_users'],entry['visits_count']))
          .toList();

      setState(() {
        _chartSeries2 = [
          charts.Series<ChartData2, DateTime>(
            id: 'User Count',
            data: formattedData,
            domainFn: (ChartData2 entry, _) => entry.date,
            measureFn: (ChartData2 entry, _) => entry.totalUsers,
            colorFn: (ChartData2 entry, _) => charts.MaterialPalette.purple.shadeDefault,
          ),
          charts.Series<ChartData2, DateTime>(
            id: 'User Count',
            data: formattedData,
            domainFn: (ChartData2 entry, _) => entry.date,
            measureFn: (ChartData2 entry, _) => entry.visitsCount,
            colorFn: (ChartData2 entry, _) => charts.MaterialPalette.blue.shadeDefault,
          )
        ];
      });
    } else {
      print('Error fetching data. Status code: ${response.statusCode}');
    }
  }
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _fetchBarChartData();
    fetchData('All Time');
    fetchData2('All Time');
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 15),
              Expanded(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 30),
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    'Users \n    $totalUsers',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    'Services \n     $totalServices',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    'Employees \n       $totalEmployees',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.black,
            labelColor: Color.fromARGB(255, 0, 169, 145),
            dividerColor: Colors.white,
            indicatorColor: Color.fromARGB(255, 0, 169, 145),
            tabs: [
              Tab(
                child: Text(
                  'Statistics',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Main Points',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
            onTap: (index) {
              setState(() {
                showStatistics = index ==
                    0; // Update the visibility based on the selected tab
              });
            },
          ),
          SizedBox(height: 15),
          if (showStatistics) // Only show the big container if showStatistics is true
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(216, 210, 210, 1)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Total Visits and Users',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Total Visits',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Total Users',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 15),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 'allTime';
                                    fetchData2('All Time');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedButton == 'allTime'
                                      ? const Color.fromARGB(255, 0, 169, 145)
                                      : Colors.white,
                                  side: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 0, 169, 145),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'All Time',
                                  style: TextStyle(
                                    color: selectedButton == 'allTime'
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            255, 0, 169, 145),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 'lastMonth';
                                    fetchData2('Last Month');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedButton == 'lastMonth'
                                      ? const Color.fromARGB(255, 0, 169, 145)
                                      : Colors.white,
                                  side: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 0, 169, 145),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Last Month',
                                  style: TextStyle(
                                    color: selectedButton == 'lastMonth'
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            255, 0, 169, 145),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 'lastSixMonths';
                                    fetchData2('Last Six Months');
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: selectedButton ==
                                          'lastSixMonths'
                                      ? const Color.fromARGB(255, 0, 169, 145)
                                      : Colors.white,
                                  side: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 0, 169, 145),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Last Six Months',
                                  style: TextStyle(
                                    color: selectedButton == 'lastSixMonths'
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            255, 0, 169, 145),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 15),
                        // Line Chart
                          Container(
                          height: 300,
                          child: charts.TimeSeriesChart(
                                        _chartSeries2,
                                        animate: true,
                                      ),
                        ),
                      ],
                    ),
                  ),
                  //second line chart
                  SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(216, 210, 210, 1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                'Users Over Time',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedButton2 = 'allTime';
                                        fetchData('All Time');
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          selectedButton2 == 'allTime'
                                              ? const Color.fromARGB(
                                                  255, 0, 169, 145)
                                              : Colors.white,
                                      side: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 0, 169, 145),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'All Time',
                                      style: TextStyle(
                                        color: selectedButton2 == 'allTime'
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 0, 169, 145),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedButton2 = 'lastMonth';
                                        fetchData('Last Month');
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          selectedButton2 == 'lastMonth'
                                              ? const Color.fromARGB(
                                                  255, 0, 169, 145)
                                              : Colors.white,
                                      side: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 0, 169, 145),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Last Month',
                                      style: TextStyle(
                                        color: selectedButton2 == 'lastMonth'
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 0, 169, 145),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedButton2 = 'lastSixMonths';
                                        fetchData('Last Six Months');
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          selectedButton2 == 'lastSixMonths'
                                              ? const Color.fromARGB(
                                                  255, 0, 169, 145)
                                              : Colors.white,
                                      side: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 0, 169, 145),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Text(
                                      'Last Six Months',
                                      style: TextStyle(
                                        color:
                                            selectedButton2 == 'lastSixMonths'
                                                ? Colors.white
                                                : const Color.fromARGB(
                                                    255, 0, 169, 145),
                                      ),
                                    ),
                                  ),
                                  
                                ],
                                
                              ),
                            ),
                            SizedBox(height: 15),
                          Container(
                          height: 300,
                          child: charts.TimeSeriesChart(
                                        _chartSeries,
                                        animate: true,
                                      ),
                        ),
                          ])),
                ],
              ),
            ),
          if (!showStatistics) // Only show the big container if showStatistics is false
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromRGBO(216, 210, 210, 1)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Total Visits Per Location',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    // Bar Chart
                    Container(
                      height: 300,
                      child: charts.BarChart(
                        _barChartData,
                        animate: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ])));
  }
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

class OrdinalSales {
  final String name;
  final int visits_count;

  OrdinalSales(this.name, this.visits_count);
}

class ChartData {
  final DateTime date;
  final int usersCount;

  ChartData(this.date, this.usersCount);
}

class ChartData2 {
  final DateTime date;
  final int totalUsers;
  final int visitsCount;

  ChartData2(this.date, this.totalUsers,this.visitsCount);
}