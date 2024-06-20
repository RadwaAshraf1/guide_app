
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/view/screens/employee/data/models/employeerequest.dart';
import 'package:guide/view/screens/employee/data/repo/employeerepo.dart';
import 'package:guide/view/screens/employee/logic/employee_state.dart';

class EmployeeCubit extends Cubit<EmployeeState> {
  final EmployeeRepo _employeeRepo;
  // static late String editeimage;
  EmployeeCubit(this._employeeRepo) : super(const EmployeeState.initial());

  TextEditingController employeeJop = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController placeIdController = TextEditingController();


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

  void emitEmployeeState() async {
    emit(const EmployeeState.loading());
    final response = await _employeeRepo.insertEmployee(
       EmployeeRequest(
          name: name.text,
         employeeJop:employeeJop.text ,
         placeId: placeIdController.text,
          )
    );
    response.when(success: (insertBuildingResponse) {
      emit(EmployeeState.success(insertBuildingResponse));
    }, 
    failure: (error) {
      emit(EmployeeState.error(error: error.apiErrorModel.message ?? ''));
    }
    );
  }
}