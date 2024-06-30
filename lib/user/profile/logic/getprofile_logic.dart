import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/user/profile/data/repo/getprofileuserrepo.dart';
import 'package:guide/user/profile/logic/getprofile_state.dart';

class GetProfileCubit extends Cubit<GetProfileState> {
  final GetProfileUserRepo _getProfileRepo;

  GetProfileCubit(this._getProfileRepo) : super(const GetProfileState.initial());

  void emitInsertBuildingState() async {
    emit(const GetProfileState.loading());
    final response = await _getProfileRepo.getProfile();
    response.when(success: (getProfile) {
      emit(GetProfileState.success(getProfile));
    }, 
    failure: (error) {
      emit(GetProfileState.error(error: error.apiErrorModel.message ?? ''));
    }
    );
  }
}