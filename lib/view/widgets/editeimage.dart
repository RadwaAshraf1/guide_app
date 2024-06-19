import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
// import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';


class EditImage extends StatelessWidget {
  const EditImage({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          // image: DecorationImage(image: AssetImage(context.read<InsertBuildingCubit>().)),
          shape: BoxShape.circle,
          color: Colors.grey[300],
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                ),
                child: IconButton(
                  icon: const Icon(Icons.add),
                  iconSize: 18,
                  color: green3,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}