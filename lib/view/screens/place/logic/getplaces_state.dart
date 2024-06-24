
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/view/screens/place/data/models/getplace.dart';
part 'getplaces_state.freezed.dart';
@freezed
class GetPlacesState<T> with _$GetPlacesState<T> {
  const factory GetPlacesState.initial() = _Initial;
  
  const factory GetPlacesState.loading() = Loading;
  const factory GetPlacesState.success(GetPlaces? getplaces) =   Success<T>;
  const factory GetPlacesState.error({required String error}) = Error;
}