import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/routes/logic/route_cubit.dart';
import 'package:guide/view/screens/routes/view/widgets/routeblocklistner.dart';
import 'package:guide/view/screens/routes/view/widgets/routeform.dart';
import 'package:guide/view/widgets/customappbar.dart';
import 'package:guide/view/widgets/custombutton.dart';

class InsertRoute extends StatelessWidget {
  const InsertRoute({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
 appBar: const CustomAppBar(
          leadingIcon: LeadingIcon(),
        ),
        body: Padding(padding: EdgeInsets.all(16),
        child: ListView(
          children: [
              verticalSpace(20),
              const RouteForm(),
            verticalSpace(20),
             CustomButonAdmin(text: 'Insert Information',
            onPressed: () {
              validate(context);
            },),
            const RouteBlockListner()
          ],
        )),
    );
  }
   void validate(BuildContext context) {
    if (context.read<RouteCubit>().formKey.currentState!.validate()) {
      context.read<RouteCubit>().emitRoutetates();
    }
  }
}