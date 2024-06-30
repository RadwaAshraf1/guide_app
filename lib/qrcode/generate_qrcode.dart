// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:guide/regionapi.dart';
// import 'package:guide/view/screens/region/data/models/getregion.dart';
// import 'package:pretty_qr_code/pretty_qr_code.dart';
// import 'package:http/http.dart' as http;



// class GenerateQrCode extends StatefulWidget {
//   const GenerateQrCode({super.key});



//   @override
//   State<GenerateQrCode> createState() => _GenerateQrCodeState();
// }

// class _GenerateQrCodeState extends State<GenerateQrCode> {
//   List<Regions> regions=[];

//   //get regions
//   Future getRegions() async{
//      var response = await http.get(
//       Uri.parse(
//           "http://smart-guidance-system.first-meeting.net/api/region"),
//     );
//     var jsonData =jsonDecode(response.body);

//     for (var eachRegion in jsonData['data']) {
//       final region = Regions(
//         regionId: eachRegion['region id'],
//         regionName : eachRegion['region name'],
//     xCoordinate : eachRegion['x coordinate'],
//     yCoordinate : eachRegion['y coordinate'],
//       );
//       regions.add(region);
//     }

//     print(regions.length);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//       body: Padding(padding: const EdgeInsets.all(16),
//           child: FutureBuilder(
//             future: getRegions(),
//             builder: (context, snapshot) {
//               return
//                  ListView.builder(
//                   itemCount:regions.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         TextField(
//                           // onSubmitted: (value){
//                           //   setState(() {
//                           //     regions[index].regionId= value;
//                           //   });
//                           // },
//                         ), 
//                         // PrettyQrView.data(data: regions[index].regionId.toString()),
//                       ],
//                     );
//                   },
//                          );
              
//                 // if (regions[index].regionId !=null) PrettyQrView.data(data: regions[index].regionId.toString())
            
//             },
            
//           ),),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatelessWidget {
  List<Team> teams = [];

  // get teams
  Future getTeams() async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/teams'));
    var jsonData = jsonDecode(response.body);

    for (var eachTeam in jsonData['data']) {
      final team = Team(
        abbreviation: eachTeam['abbreviation'],
        city: eachTeam['city'],
      );
      teams.add(team);
    }

    print(teams.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: getTeams(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: teams.length,
                  padding: EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ListTile(
                          title: Text(teams[index].abbreviation),
                          subtitle: Text(teams[index].city),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

class Team {
  final String abbreviation; // eg. LAL
  final String city; // eg. Los Angeles

  Team({
    required this.abbreviation,
    required this.city,
  });
}