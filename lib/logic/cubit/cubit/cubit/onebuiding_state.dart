part of 'onebuiding_cubit.dart';

@immutable
abstract class OneBuildingState {}

class OneBuildingInitial extends OneBuildingState {}


class OneBuildingLoaded extends OneBuildingState {
  final List<OneBuilding> building;

  OneBuildingLoaded(this.building);
}
