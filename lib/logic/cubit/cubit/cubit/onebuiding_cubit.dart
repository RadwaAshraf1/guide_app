import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/data/model/onebuilding.dart';
import 'package:guide/data/repo/onebuidingrepo.dart';
part 'onebuiding_state.dart';


class OneBuildingCubit extends Cubit<OneBuildingState> {

  final OneBuidingRepo oneBuildingRepo;
  List<OneBuilding> building =[];

  OneBuildingCubit(this.oneBuildingRepo) : super(OneBuildingInitial());

  List<OneBuilding> fetchData (){
    oneBuildingRepo.fetchData().then((building) => {
      emit(OneBuildingLoaded(building)),
      this.building = building
    });
    return building;
  }

}

