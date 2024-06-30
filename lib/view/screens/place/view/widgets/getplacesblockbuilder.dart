import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/screens/place/logic/getplaces_cubit.dart';
import 'package:guide/view/screens/place/logic/getplaces_state.dart';
import 'package:guide/view/screens/place/view/widgets/getplaces_listview.dart';

class GetPlacesBlockBuilder extends StatelessWidget {
  const GetPlacesBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
     return BlocBuilder<GetPlacesCubit, GetPlacesState>(
      buildWhen: (previous, current) => current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const SizedBox(
              height: 100,
              child: Center(
                child: CircularProgressIndicator(color: green2),
              ),
            );
          },
          success: (getPlaces) {
          var getplaceList = getPlaces?.places;
            return GetPlacesListView(placesModels: getplaceList,);
          },
          error: (error) {
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

   setupSuccess(getplaceList) => GetPlacesListView(placesModels: getplaceList ?? [],);
}