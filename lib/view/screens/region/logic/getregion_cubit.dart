


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/region/data/models/regionresponse.dart';
import 'package:guide/view/screens/region/data/repo/getregionrepo.dart';
import 'package:guide/view/screens/region/logic/getregion_state.dart';

class GetRegionCubit extends Cubit<GetRegionState> {
  final GetRegionRepo _getRegionRepo;

  final List<Regions> regionsList = [];

  GetRegionCubit(this._getRegionRepo) : super(const GetRegionState.initial());

  void emitGetRegionState() async {
    emit(const GetRegionState.loading());
    final response = await _getRegionRepo.getRegion();
    response.when(success: (getRegion) {
      emit(GetRegionState.success(getRegion));
    }, 
    failure: (error) {
      emit(GetRegionState.error(error: error.apiErrorModel.message ?? ''));
    }
    );
  }
}