part of 'oneservice_cubit.dart';

@immutable
abstract class OneServiceState {}

class OneServiceInitial extends OneServiceState {}


class OneServiceLoaded extends OneServiceState {
  final List<OneService> service;

  OneServiceLoaded(this.service);
}
