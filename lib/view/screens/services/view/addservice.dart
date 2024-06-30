import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/services/logic/service_cubit.dart';
import 'package:guide/view/screens/services/view/widgets/serviceblocklistener.dart';
import 'package:guide/view/screens/services/view/widgets/servicetextformfield.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';

// ignore: must_be_immutable
class AddServices extends StatelessWidget {
   const AddServices({super.key});

 
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
            verticalSpace(20),
            const ServiceTextFormField(),
            verticalSpace(100),
            CustomButon(
              text: 'Add',
              onPressed: () {
                validate(context);}
            ),
            ServiceBlocListener()
          ],
        ),
      ),
    );
    
  }
  void validate(BuildContext context) {
    if (context.read<ServiceCubit>().formKey.currentState!.validate()) {
      context.read<ServiceCubit>().emitServiceStates();
    }
  }}