import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/di/dependency_injection.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';
import 'package:guide/view/screens/building/view/addbuilding.dart';
import 'package:guide/view/widgets/customappbar.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        actions: [
          ActionIcon(
            icon: Icons.qr_code_scanner_rounded,
          )
        ],
      ),
    body: Padding(
      padding: EdgeInsets.symmetric(vertical: 50,horizontal: 16),
    child: GestureDetector(
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
        color: white),
        child: Row(
          children: [
            Image.asset('assets/images/logo.png',),
            horizontalSpace(20),
            Text('Faculty of Computers \n and Information Technology')
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(oneBuildingScreen);
      },
    ),
    ),
      floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {},
          backgroundColor: green3,
          child: IconButton(
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BlocProvider(
              create: (context) => getIt<InsertBuildingCubit>(),
              child: const AddBuilding()),));
            },
            icon: const Icon(Icons.add),
            color: white,
          )),
    );
  }
}
