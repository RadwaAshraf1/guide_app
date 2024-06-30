import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

// ignore: must_be_immutable
class InsertInformation extends StatelessWidget {
   InsertInformation({super.key});

   TextEditingController source = TextEditingController();
   TextEditingController destination = TextEditingController();
   TextEditingController nextStep = TextEditingController();
   TextEditingController direction = TextEditingController();
   TextEditingController distance = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: const CustomAppBar(
  text: Text('Insert Information',style: TextStyle(color: white),),
          leadingIcon: LeadingIcon(),
        ),
        body: Padding(padding: EdgeInsets.all(16),
        child: ListView(
          children: [
              const SizedBox(height: 20),
              CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: source,
              labelText: 'Source',
            ),
            const SizedBox(
              height: 20,
            ),
              const SizedBox(height: 20),
              CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: destination,
              labelText: 'Destination',
            ),
            const SizedBox(
              height: 20,
            ),
              const SizedBox(height: 20),
              CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: nextStep,
              labelText: 'Next Step',
            ),
            const SizedBox(
              height: 20,
            ),
              const SizedBox(height: 20),
              CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: direction,
              labelText: 'Direction',
            ),
            const SizedBox(
              height: 20,
            ),
              const SizedBox(height: 20),
              CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: distance,
              labelText: 'Distance',
            ),
            const SizedBox(
              height: 20,
            ),
             CustomButon(text: 'Insert Information',
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ImportInsert()));
            },)
          ],
        )),
    );
  }
}