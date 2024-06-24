
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/routes/logic/route_cubit.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class RouteForm extends StatelessWidget {
  const RouteForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RouteCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
               validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RouteCubit>().sourcwController,
              labelText: 'Source',
            ),
            verticalSpace(20),
              
              CustomTextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RouteCubit>().destination,
              labelText: 'Destination',
            ),
            verticalSpace(20),
             
              CustomTextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RouteCubit>().nextStep,
              labelText: 'Next Step',
            ),
            verticalSpace(20),
             
              CustomTextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RouteCubit>().direction,
              labelText: 'Direction',
            ),
            verticalSpace(20),
             
              CustomTextFormField(
               validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<RouteCubit>().distance,
              labelText: 'Distance',
            ),
        ],
      ),
    );
  }
}