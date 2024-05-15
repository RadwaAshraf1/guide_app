import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guide/data/model/routmodel.dart';
import 'package:guide/data/repo/routesrepo.dart';

part 'routes_state.dart';

class RoutesCubit extends Cubit<RoutesState> {

  final RoutesRepo routeRepo;
  List<RouteModel> routes =[];

  RoutesCubit(this.routeRepo) : super(RoutesInitial());

  List<RouteModel> fetchData (){
    routeRepo.fetchData().then((routes) => {
      emit(RoutesLoaded(routes)),
      this.routes = routes
    });
    return routes;
  }

}
