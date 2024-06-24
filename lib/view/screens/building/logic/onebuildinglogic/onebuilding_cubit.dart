
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/building/data/repo/onebuilding.dart';
import 'package:guide/view/screens/building/logic/onebuildinglogic/onebuilding_state.dart';


class OneBuildingCubit extends Cubit<OneBuildingState> {
  final OneBuildingRepo _oneBuildingRepo;

  OneBuildingCubit(this._oneBuildingRepo) : super(const OneBuildingState.initial());

  void emitInsertBuildingState() async {
    emit(const OneBuildingState.loading());
    final response = await _oneBuildingRepo.getOneBuilding();
    response.when(success: (getOneBuilding) {
      emit(OneBuildingState.success(getOneBuilding));
    }, 
    failure: (error) {
      emit(OneBuildingState.error(error: error.apiErrorModel.message ?? ''));
    }
    );
  }
}