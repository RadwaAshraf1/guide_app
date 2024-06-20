import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/building/data/model/insert_building_request.dart';
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
            // const EditImage(),
            verticalSpace(20),
         BuildingTextFormField(),
           verticalSpace(30),
            NextButton(
            onPressed: () {
              validate(context);
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

