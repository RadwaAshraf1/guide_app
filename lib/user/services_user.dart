import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/user/home.dart';
import 'package:guide/user/servicesdetails.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ServicesUser extends StatefulWidget {
  const ServicesUser({super.key});

  @override
  State<ServicesUser> createState() => _ServicesUserState();
}

class _ServicesUserState extends State<ServicesUser> {
   List<dynamic> services = [];

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
 @override
  void initState() {
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text('Services', style: TextStyle(
            color: white,)),
        leadingIcon: LeadingIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 55, right: 20, left: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xff1D1617).withOpacity(0.11),
                    blurRadius: 30,
                    spreadRadius: 0.0)
              ]),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'search',
                  hintStyle: const TextStyle(
                    color: Color(0xffDDDADA),
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            const CustomSizedBox(),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(color: Colors.transparent,),
              itemCount: services.length,
              itemBuilder: (context, index) {
                final servicesItem = services[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ServicesDetails())),
                  child: CustomListTile(
                  leading: const Icon(
                    Icons.menu_book_outlined,
                  ),
                  text: servicesItem['name'],
                  trailing: const TralingIcon(
                    
                  ),
                                ),
                );
              },
             
            ),    ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.onTap,
    required this.text,
    this.trailing,
    this.subtitle, this.leading,
  });
  final Function()? onTap;
  final String text;
  final Widget? subtitle;
final Widget? leading;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       color: white,
        borderRadius: BorderRadius.circular(16),
       
      ),
      child: ListTile(
        
          onTap: onTap,
          leading: leading,
          title: Text(text, style: const TextStyle(fontSize: 14, color: black)),
          subtitle: subtitle,
          trailing: const TralingIcon(),),
    );
  }
}

class TralingIcon extends StatelessWidget {
  const TralingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_sharp,size: 20,));
  }
}
