import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/view/screens/region/data/models/getregion.dart';

part 'getregion_state.freezed.dart';

@freezed
class GetRegionState with _$GetRegionState {
  const factory GetRegionState.initial() = _Initial;
  
  const factory GetRegionState.loading() = Loading;
  const factory GetRegionState.success(GetRegion? getRegion) =   Success;
  const factory GetRegionState.error({required String error}) = Error;
}