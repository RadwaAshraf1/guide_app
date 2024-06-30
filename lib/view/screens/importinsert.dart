
import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/screens/insertinformation.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/nextbutton.dart';


class ImportInsert extends StatelessWidget {
  const ImportInsert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        actions: [ActionIcon(icon: Icons.edit_note_rounded,)],
        text: Text('Insert Information',style: TextStyle(color: white)),
        leadingIcon: LeadingIcon(),
      ),
      body: Padding(padding: const EdgeInsets.all(16),
      child: ListView(
        children: [const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             OutlinedButton.icon(

                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: green3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddMainPoints()));
                    },
                    icon: const Icon(Icons.import_export_outlined, color: green3),
                    label: const Text(
                      'Import',
                      style: TextStyle(color: green3),
                    )),
                    SizedBox(width: 20,),
             OutlinedButton.icon(

                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: green3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InsertInformation(),));
                    },
                    icon: const Icon(Icons.insert_drive_file_outlined, color: green3),
                    label: const Text(
                      'Insert',
                      style: TextStyle(color: green3),
                    )),
          ],
          
        ),
SizedBox(height: 190,)    ,   NextButton(   onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>const Services()
                    //   ),
                    // );
                  },)
              ],
            
        
        
      )),
    );
  }
}