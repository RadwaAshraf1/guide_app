import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';
import 'package:guide/view/screens/building/view/widgets/buildingtextformfield.dart';
import 'package:guide/view/screens/building/view/widgets/insertbuildingblocklistner.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/customtextformfield.dart';
import 'package:guide/view/widgets/editeimage.dart';
import 'package:guide/view/widgets/nextbutton.dart';

class AddBuilding extends StatelessWidget {
  const AddBuilding({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: const CustomAppBar(
        leadingIcon: LeadingIcon(),
        text: Text(
          'Add Building',
          style: TextStyle(
            color: white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const EditImage(),
            verticalSpace(20),
          Form(
      key: context.read<InsertBuildingCubit>().formKey,
      child: Column(
        children: [
           CustomTextFormField(
             
              labelText: 'Building name',
              validator:  (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            }, controller: context.read<InsertBuildingCubit>().buildingNameController,
            ),
            verticalSpace(20),
            CustomTextFormField(
              validator:  (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
            
              labelText: 'Building address',  controller:context.read<InsertBuildingCubit>().addressController,
            ),
            verticalSpace(20),
            CustomTextFormField(
              validator:  (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
             
              labelText: 'Longitude', controller: context.read<InsertBuildingCubit>().langController,
            ),
            verticalSpace(20),
            CustomTextFormField(
              validator:  (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              
              labelText: 'Latitude',controller: context.read<InsertBuildingCubit>().latController,
            ),
            CustomTextFormField(
              validator:  (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              
              labelText: 'Building description',controller: context.read<InsertBuildingCubit>().descriptionController,
            ),
        ],
      ),
    ),
           verticalSpace(30),
            NextButton(
            onPressed: () {
              
            },
           ),
           const InsertBuildingBlocListener(),
          ],
        ),
      ),
    );
  }
   void validate(BuildContext context) {
    if (context.read<InsertBuildingCubit>().formKey.currentState!.validate()) {
      context.read<InsertBuildingCubit>().emitInsertBuildingState();
    }
  }
}