part of 'region_cubit.dart';

@immutable
abstract class RegionState {}

class RegionInitial extends RegionState {}


class RegionLoaded extends RegionState {
  final List<RegionModel> region;

 RegionLoaded(this.region);
}
