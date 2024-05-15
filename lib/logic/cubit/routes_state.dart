part of 'routes_cubit.dart';

@immutable
abstract class RoutesState {}

class RoutesInitial extends RoutesState {}


class RoutesLoaded extends RoutesState {
  final List<RouteModel> routes;

  RoutesLoaded(this.routes);
}
