import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/nextbutton.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text('Add Building', style: TextStyle(color: white)),
        leadingIcon: LeadingIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Services',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: green3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(addServiceScreen);
                    },
                    icon: const Icon(Icons.add, color: green3),
                    label: const Text(
                      'Add services',
                      style: TextStyle(color: green3),
                    )),
              ],
            ),
            const Spacer(),
            NextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>const Employee()
                //   ),
                // );
              },
            )
          ],
        ),
      ),
    );
  }
}
