
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/user/profile/data/model/updateprofilerequest.dart';
import 'package:guide/user/profile/data/repo/updateprofilerepo.dart';
import 'package:guide/user/profile/logic/updateprofile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  final UpdateProfileRepoRepo updatRepo;
  UpdateProfileCubit(this.updatRepo) : super(const UpdateProfileState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
 
  final formKey = GlobalKey<FormState>();

  void emitUpdateStates() async {
    emit(const UpdateProfileState.loading());
    final response = await updatRepo.updateProfile(
      UpdateProfileRequest(
        email:email.text ,
        username:nameController.text ,
        image:image.text ,
        password:password.text ,
        phone: phone.text,

      )
    );
    response.when(success: (updateResponse) {
      emit(UpdateProfileState.success(updateResponse));
    }, failure: (error) {
      emit(UpdateProfileState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}