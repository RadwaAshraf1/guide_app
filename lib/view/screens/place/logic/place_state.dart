import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_state.freezed.dart';

@freezed
class PlaceState<T> with _$PlaceState<T> {
  const factory PlaceState.initial() = _Initial;
  
  const factory PlaceState.loading() = Loading;
  const factory PlaceState.success(T data) = Success<T>;
  const factory PlaceState.error({required String error}) = Error;
}