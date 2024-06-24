import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/view/screens/building/data/model/getonebuilding.dart';

part 'onebuilding_state.freezed.dart';

@freezed
class OneBuildingState with _$OneBuildingState {
  const factory OneBuildingState.initial() = _Initial;
  
  const factory OneBuildingState.loading() = Loading;
  const factory OneBuildingState.success(OneBuildingModel dataOneBuilding) =   Success;
  const factory OneBuildingState.error({required String error}) = Error;
}

// import 'package:flutter/material.dart';
// import 'package:guide/view/screens/building/data/model/getonebuilding.dart';

// @immutable
// abstract class OneBuildingState {}

// class OneBuildingInitial extends OneBuildingState {}


// class OneBuildingLoaded extends OneBuildingState {
//   final DataOneBuildind oneBuilding;

//   OneBuildingLoaded(this.oneBuilding);
// }