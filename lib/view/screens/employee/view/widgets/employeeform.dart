import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/employee/logic/employee_cubit.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class EmployeeForm extends StatelessWidget {
  const EmployeeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<EmployeeCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
             validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }},
              controller: context.read<EmployeeCubit>().name,
              labelText: 'Employee Name',
            ),
            verticalSpace(20),
            CustomTextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }},
              controller: context.read<EmployeeCubit>().employeeJop,
              labelText: 'Employee Jop',
            ),
            verticalSpace(20),
            CustomTextFormField(
               validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }},
              controller: context.read<EmployeeCubit>().placeIdController,
              labelText: 'Place ID',
            ),
           
          
        ],
      ),
    );
  }
}