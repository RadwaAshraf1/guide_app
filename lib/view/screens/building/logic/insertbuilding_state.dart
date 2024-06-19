import 'package:freezed_annotation/freezed_annotation.dart';

part 'insertbuilding_state.freezed.dart';

@freezed
class InsertBuildingState<T> with _$InsertBuildingState<T> {
  const factory InsertBuildingState.initial() = _Initial;
  
  const factory InsertBuildingState.loading() = Loading;
  const factory InsertBuildingState.success(T data) = Success<T>;
  const factory InsertBuildingState.error({required String error}) = Error;
}