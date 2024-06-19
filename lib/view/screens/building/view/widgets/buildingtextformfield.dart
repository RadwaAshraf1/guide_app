import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class BuildingTextFormField extends StatelessWidget {
  const BuildingTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}