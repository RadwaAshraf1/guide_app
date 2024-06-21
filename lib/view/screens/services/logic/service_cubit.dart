import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/services/data/models/servicesrequest.dart';
import 'package:guide/view/screens/services/data/repo/servicerepo.dart';
import 'package:guide/view/screens/services/logic/service_state.dart';



class ServiceCubit extends Cubit<ServiceState> {
  final ServiceRepo _serviceRepo;
  ServiceCubit(this._serviceRepo) : super(const ServiceState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController placeId = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
 
  final formKey = GlobalKey<FormState>();

  void emitServiceStates() async {
    emit(const ServiceState.loading());
    final response = await _serviceRepo.insertServices(
      ServiceRequest(name: nameController.text,
       placeId: placeId.text,
        description: descriptionController.text
        )
    );
    response.when(success: (serviceResponse) {
      emit(ServiceState.success(serviceResponse));
    }, failure: (error) {
      emit(ServiceState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}