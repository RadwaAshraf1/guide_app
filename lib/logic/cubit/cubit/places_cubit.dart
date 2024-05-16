
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/data/model/placesmodel.dart';
import 'package:guide/data/repo/placesrepo.dart';
part 'places_state.dart';


class PlacesCubit extends Cubit<PlacesState> {

  final PlacesRepo placesRepo;
  List<PlacesModel> places =[];

  PlacesCubit(this.placesRepo) : super(PlacesInitial());

  List<PlacesModel> fetchData (){
    placesRepo.fetchData().then((places) => {
      emit(PlacesLoaded(places)),
      this.places = places
    });
    return places;
  }

}
