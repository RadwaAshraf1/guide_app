import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_state.freezed.dart';

@freezed
class RouteState<T> with _$RouteState<T> {
  const factory RouteState.initial() = _Initial;
  
  const factory RouteState.loading() = RouteLoading;
  const factory RouteState.success(T data) = RouteSuccess<T>;
  const factory RouteState.error({required String error}) = RouteError;
}