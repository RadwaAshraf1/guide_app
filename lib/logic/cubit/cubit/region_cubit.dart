import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/data/model/regionmodel.dart';
import 'package:guide/data/repo/regionrepo.dart';

part 'region_state.dart';


class RegionCubit extends Cubit<RegionState> {

  final RegionRepo regionRepo;
  List<RegionModel> region =[];

  RegionCubit(this.regionRepo) : super(RegionInitial());

  List<RegionModel> fetchData (){
    regionRepo.fetchData().then((region) => {
     emit(RegionLoaded(region))
    });
    return region;
  }

}
