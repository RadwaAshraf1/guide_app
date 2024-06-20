import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_state.freezed.dart';

@freezed
class EmployeeState<T> with _$EmployeeState<T> {
  const factory EmployeeState.initial() = _Initial;
  
  const factory EmployeeState.loading() = Loading;
  const factory EmployeeState.success(T data) = Success<T>;
  const factory EmployeeState.error({required String error}) = Error;
}