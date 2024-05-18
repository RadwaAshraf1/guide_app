import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/data/model/oneservice.dart';
import 'package:guide/data/repo/oneservice.dart';
part 'oneservice_state.dart';

class OneServiceCubit extends Cubit<OneServiceState> {

  final OneServiceRepo oneServiceRepo;
  List<OneService> service =[];

  OneServiceCubit(this.oneServiceRepo) : super(OneServiceInitial());

  List<OneService> fetchData (){
    oneServiceRepo.fetchData().then((service) => {
      emit(OneServiceLoaded(service)),
      this.service = service
    });
    return service;
  }

}

