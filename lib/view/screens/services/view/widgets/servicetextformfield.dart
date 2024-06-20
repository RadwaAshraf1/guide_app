import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/services/logic/service_cubit.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class ServiceTextFormField extends StatelessWidget {
  const ServiceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ServiceCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<ServiceCubit>().nameController,
              labelText: 'Service Name',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<ServiceCubit>().placeId,
              labelText: 'Place ID',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<ServiceCubit>().descriptionController,
              labelText: 'Description',
            ),
        ],
      ),
    );
  }
}