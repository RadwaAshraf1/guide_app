
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/place/data/models/placerequestbody.dart';
import 'package:guide/view/screens/place/data/repo/placerepo.dart';
import 'package:guide/view/screens/place/logic/place_state.dart';

class PlaceCubit extends Cubit<PlaceState> {
  final PlaceRepo _placeRepo;
  PlaceCubit(this._placeRepo) : super(const PlaceState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController xCordController = TextEditingController();
  TextEditingController yCordController = TextEditingController();
  TextEditingController buldingIdController = TextEditingController();
  TextEditingController guideWordController = TextEditingController();
  TextEditingController regionIdController = TextEditingController();
  TextEditingController idController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emiPlaceStates() async {
    emit(const PlaceState.loading());
    final response = await _placeRepo.insertPlace(
      PlacesRequest(
      guide_word: guideWordController.text,
      id: idController.text,
      name: nameController.text,
      region_id: regionIdController.text,
      x_coordinate: xCordController.text,
      y_coordinate: yCordController.text,
      building_id: buldingIdController.text,
      ),
    );
    response.when(success: (plaseResponse) {
      emit(PlaceState.success(plaseResponse));
    }, failure: (error) {
      emit(PlaceState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
