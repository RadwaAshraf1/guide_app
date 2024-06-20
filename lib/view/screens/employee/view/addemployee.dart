import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/employee/logic/employee_cubit.dart';
import 'package:guide/view/screens/employee/view/widgets/employeeblocklistener.dart';
import 'package:guide/view/screens/employee/view/widgets/employeeform.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';

class AddEmployee extends StatelessWidget {
   const AddEmployee({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: Text('Add Building',style: TextStyle(color: white)),
        leadingIcon: LeadingIcon(
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            verticalSpace(10),
            const EmployeeForm(),
            verticalSpace(40),
            CustomButonAdmin(
              text: 'Add',
              onPressed: () {
                validate(context);
              },
            ),
            const EmployeeBlockListener()
          ],
        ),
      ),
    );
}
void validate(BuildContext context) {
    if (context.read<EmployeeCubit>().formKey.currentState!.validate()) {
      context.read<EmployeeCubit>().emitEmployeeState();
    }
  }
}