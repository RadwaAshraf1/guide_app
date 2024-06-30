import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/region/logic/region_cubit.dart';
import 'package:guide/view/screens/region/view/widgets/regionblocklistner.dart';
import 'package:guide/view/screens/region/view/widgets/regionform.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';

class InsertRegion extends StatelessWidget {
  const InsertRegion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          text: Text('Add Building', style: TextStyle(color: white)),
          leadingIcon: LeadingIcon(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              ListView(
                children: [
            verticalSpace(20),
            const RegionForm(),
            verticalSpace(20),
            const Text('Region QR Code',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            OutlinedButton.icon(

              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: green3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26))),
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => GenerateQrCode()));
              },
              icon: const Icon(Icons.qr_code_2_rounded, color: green3),
              label: const Text(
                'Generate QR Code',
                style: TextStyle(color: green3),
              ),
            ),
           verticalSpace(20),
            CustomButon(
              text: 'Add',
              onPressed: () {
                  validate(context);
              },
            ),
            const RegionBlockListner(),
          ]),
        ));
  }
    void validate(BuildContext context) {
    if (context.read<RegionCubit>().formKey.currentState!.validate()) {
      context.read<RegionCubit>().emitRegionStates();
    }
  }
}
