import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/user/profile/data/model/getprofile.dart';
part 'getprofile_state.freezed.dart';

@freezed
class GetProfileState with _$GetProfileState {
  const factory GetProfileState.initial() = _Initial;
  
  const factory GetProfileState.loading() = Loading;
  const factory GetProfileState.success(GetProfileUser getPROFILE) =   Success;
  const factory GetProfileState.error({required String error}) = Error;
}
