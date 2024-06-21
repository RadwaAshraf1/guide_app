import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/helper/spacing.dart';
import 'package:guide/view/screens/place/logic/place_cubit.dart';
import 'package:guide/view/widgets/customtextformfield.dart';

class PlaceForm extends StatelessWidget {
  const PlaceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<PlaceCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller:  context.read<PlaceCubit>().nameController,
              labelText: 'Name',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller:  context.read<PlaceCubit>().idController,
              labelText: 'ID',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<PlaceCubit>().regionIdController,
              labelText: 'Region ID',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<PlaceCubit>().guideWordController,
              labelText: 'Guide word',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<PlaceCubit>().xCordController,
              labelText: 'X-Cordinate',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<PlaceCubit>().yCordController,
              labelText: 'Y-Cordinate',
            ),
            verticalSpace(20),
            CustomTextFormField(
                validator: (value) {
              if (value == null || value.isEmpty) {
                return 'can not be empty';
              }
            },
              controller: context.read<PlaceCubit>().buldingIdController,
              labelText: 'Building ID',
            ),
        ],
      ),
    );
  }
}