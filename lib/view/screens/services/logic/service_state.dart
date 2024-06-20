import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_state.freezed.dart';

@freezed
class ServiceState<T> with _$ServiceState<T> {
  const factory ServiceState.initial() = _Initial;
  
  const factory ServiceState.loading() = ServiceLoading;
  const factory ServiceState.success(T data) = ServiceSuccess<T>;
  const factory ServiceState.error({required String error}) = ServiceError;
}