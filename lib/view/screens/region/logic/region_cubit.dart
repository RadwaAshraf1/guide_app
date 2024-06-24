
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/region/data/models/regionrequest.dart';
import 'package:guide/view/screens/region/data/repo/regionrepo.dart';
import 'package:guide/view/screens/region/logic/region_state.dart';

class RegionCubit extends Cubit<RegionState> {
  final RegionRepo _regionRepo;
  RegionCubit(this._regionRepo) : super(const RegionState.initial());

  TextEditingController idController = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController nextStep = TextEditingController();
  TextEditingController xCoordinate = TextEditingController();
  TextEditingController yCoordinate = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitRegionStates() async {
    emit(const RegionState.loading());
    final response = await _regionRepo.insertRegion(RegionRequest(
      id: idController.text,
      name: name.text, 
      x_coordinate: xCoordinate.text, 
      y_coordinate: yCoordinate.text
      ));
    response.when(success: (regionResponse) {
      emit(RegionState.success(regionResponse));
    }, failure: (error) {
      emit(RegionState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
