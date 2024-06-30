import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:guide/view/widgets/customappbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  String selectedButton = 'allTime';
  late TabController _tabController;
  bool showStatistics =
      true; // Add a variable to control the visibility of the big container
  List<charts.Series<dynamic, DateTime>> _chartSeries = []; //new
  List<charts.Series<OrdinalSales, String>> _barChartData = [];
  int locations = 0;
  int totalEmployees = 0;
  int totalServices = 0;
  Future<void> _fetchBarChartData() async {
    final url =
        'http://smart-guidance-system.first-meeting.net/api/user-dashboard';

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
        locations = adminStatistics['locations'];
        totalEmployees = adminStatistics['totalEmployees'];
        totalServices = adminStatistics['totalServices'];
      });
    } else {
      throw Exception('Failed to fetch data from the API');
    }
  }

  void fetchData(String timePeriod) async {
    String apiUrl =
        'http://smart-guidance-system.first-meeting.net/api/user-dashboard';

    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      List<dynamic> chartData;
      if (timePeriod == 'All Time') {
        chartData = data['adminStatistics']['allTimeVisits'];
      } else if (timePeriod == 'Last Six Months') {
        chartData = data['adminStatistics']['lastSixMonthsVisits'];
      } else if (timePeriod == 'Last Month') {
        chartData = data['adminStatistics']['lastMonthVisits'];
      } else {
        print('Invalid time period');
        return;
      }

      List<ChartData> formattedData = chartData
          .map((entry) =>
              ChartData(DateTime.parse(entry['date']), entry['visits_count']))
          .toList();

      setState(() {
        _chartSeries = [
          charts.Series<ChartData, DateTime>(
            id: 'Visit Count',
            data: formattedData,
            domainFn: (ChartData entry, _) => entry.date,
            measureFn: (ChartData entry, _) => entry.visitsCount,
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
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:CustomAppBar(),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 15),
          Row(
            //the 3 small containers
            children: [
              SizedBox(width: 15),
              Expanded(
                child: Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 30),
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    'Locations \n    $locations',
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
          //tab bar
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Color.fromARGB(255, 0, 169, 145),
            dividerColor: Colors.white,
            indicatorColor: Color.fromARGB(255, 0, 169, 145),
            controller: _tabController,
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
          if (showStatistics) // Only show container if showStatistics is true
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
                        //text
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Visits Over Time',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        //buttons
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectedButton = 'allTime';
                                    fetchData('All Time');
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
                                    fetchData('Last Month');
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
                                    fetchData('Last Six Months');
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
                        Container(
                          height: 300,
                          child: charts.TimeSeriesChart(
                            _chartSeries,
                            animate: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //second Container
                  SizedBox(height: 15),
                  Container(
                      height: 200,
                      width: 500,
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
                                'Latest Visits',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
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
                          behaviors: [
                            charts.PanAndZoomBehavior(),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
        ])));
  }
}

class OrdinalSales {
  final String name;
  final int visits_count;

  OrdinalSales(this.name, this.visits_count);
}

class ChartData {
  final DateTime date;
  final int visitsCount;

  ChartData(this.date, this.visitsCount);
}