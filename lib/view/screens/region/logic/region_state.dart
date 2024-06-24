import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_state.freezed.dart';

@freezed
class RegionState<T> with _$RegionState<T> {
  const factory RegionState.initial() = _Initial;
  
  const factory RegionState.loading() = RegionLoading;
  const factory RegionState.success(T data) = RegionSuccess<T>;
  const factory RegionState.error({required String error}) = RegionError;
}