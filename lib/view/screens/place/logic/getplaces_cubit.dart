
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/place/data/repo/getplacerepo.dart';
import 'package:guide/view/screens/place/logic/getplaces_state.dart';

class GetPlacesCubit extends Cubit<GetPlacesState> {
  final GetPlaceRepo _getPlacesRepo;

  GetPlacesCubit(this._getPlacesRepo) : super(const GetPlacesState.initial());

  void emitGetPlacestate() async {
    emit(const GetPlacesState.loading());
    final response = await _getPlacesRepo.getPlace();
    response.when(success: (getPlaces) {
      emit(GetPlacesState.success(getPlaces));
    }, 
    failure: (error) {
      emit(GetPlacesState.error(error: error.apiErrorModel.message ?? ''));
    }
    );
  }
}