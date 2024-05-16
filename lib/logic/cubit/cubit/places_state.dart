part of 'places_cubit.dart';
@immutable
abstract class PlacesState {}

class PlacesInitial extends PlacesState {}


class PlacesLoaded extends PlacesState {
  final List<PlacesModel> places;

  PlacesLoaded(this.places);
}
