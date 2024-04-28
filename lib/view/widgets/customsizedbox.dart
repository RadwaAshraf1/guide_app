import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 250,
        child: Image.asset(
          'assets/images/map.jpg',          
          fit: BoxFit.cover,
        ),
      );
  }
}
