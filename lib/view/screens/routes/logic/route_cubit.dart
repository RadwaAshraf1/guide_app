import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/routes/data/models/routerequest.dart';
import 'package:guide/view/screens/routes/data/repo/routerepo.dart';
import 'package:guide/view/screens/routes/logic/route_state.dart';

class RouteCubit extends Cubit<RouteState> {
  final RouteRepo _routeRepo;
  RouteCubit(this._routeRepo) : super(const RouteState.initial());

  TextEditingController sourcwController = TextEditingController();
  TextEditingController destination = TextEditingController();
  TextEditingController nextStep = TextEditingController();
  TextEditingController direction = TextEditingController();
  TextEditingController distance = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitRoutetates() async {
    emit(const RouteState.loading());
    final response = await _routeRepo.insertRoute(RouteRequest(
      source: sourcwController.text,
      destination: destination.text,
      next_step: nextStep.text,
      direction: direction.text,
      distance: distance.text,
    ));
    response.when(success: (routeeResponse) {
      emit(RouteState.success(routeeResponse));
    }, failure: (error) {
      emit(RouteState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
