import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/region/logic/region_cubit.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class RegionForm extends StatelessWidget {
  const RegionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegionCubit>().formKey,
      child:
    Column(
      children: [
        CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RegionCubit>().name,
              labelText: 'Region Name',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RegionCubit>().idController,
              labelText: 'Region ID',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RegionCubit>().xCoordinate,
              labelText: 'X_Coordinate',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RegionCubit>().yCoordinate,
              labelText: 'Y_Coordinate',
            ),
      ],
    ));
  }
}