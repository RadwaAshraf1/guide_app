
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/building/data/model/insert_building_request.dart';
import 'package:guide/view/screens/building/data/repo/insertbuildingrepo.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_state.dart';
// import 'package:image_picker/image_picker.dart';

class InsertBuildingCubit extends Cubit<InsertBuildingState> {
  final InsertBuildingRepo _insertBuildingRepo;
  // static late String editeimage;
  InsertBuildingCubit(this._insertBuildingRepo) : super(const InsertBuildingState.initial());

  TextEditingController addressController = TextEditingController();
  TextEditingController buildingNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController langController = TextEditingController();
  TextEditingController latController = TextEditingController();

// late String editeimage;
//  AssetImage image =AssetImage(editeimage);

// ImagePicker picker =ImagePicker();
// File? selectedImage;

// getImage(ImageSource source)async{
//   final XFile? image =await picker.pickImage(source: source);
//   if(image!=null){
//     selectedImage =File(image.path);
//   } 
// } 

  final formKey = GlobalKey<FormState>();

  void emitInsertBuildingState() async {
    emit(const InsertBuildingState.loading());
    final response = await _insertBuildingRepo.insertBuilding(
       InsertBuildingRequest(
          address: addressController.text,
          name: buildingNameController.text,
          latitude: latController.text,
          longitude: langController.text,
          description:descriptionController.text,
          )
    );
    response.when(success: (insertBuildingResponse) {
      emit(InsertBuildingState.success(insertBuildingResponse));
    }, 
    failure: (error) {
      emit(InsertBuildingState.error(error: error.apiErrorModel.message ?? ''));
    }
    );
  }
}