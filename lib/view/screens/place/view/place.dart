import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/place/logic/place_cubit.dart';
import 'package:guide/view/screens/place/view/widgets/placeblocklistner.dart';
import 'package:guide/view/screens/place/view/widgets/placeform.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';

class AddPlace extends StatelessWidget {
   const AddPlace({super.key});

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
            const PlaceForm(),
            verticalSpace(100),
            CustomButonAdmin(
              text: 'Add',
              onPressed: () {
                validate(context);}
            ),
            const PlaceBlockListner()
          ],
        ),
      ),
    );
    
  }
  void validate(BuildContext context) {
    if (context.read<PlaceCubit>().formKey.currentState!.validate()) {
      context.read<PlaceCubit>().emiPlaceStates();
    }
  }}