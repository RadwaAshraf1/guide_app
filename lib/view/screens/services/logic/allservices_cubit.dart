// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:guide/view/screens/services/data/repo/allservicesrepo.dart';
// import 'package:guide/view/screens/services/logic/allservices_state.dart';

// class AllServicesCubit extends Cubit<AllServicesState> {
//   final AllServicesRepo _allServicesRepo;

//   AllServicesCubit(this._allServicesRepo) : super(const AllServicesState.initial());

//   void emitAllServicesState() async {
//     emit(const AllServicesState.loading());
//     final response = await _allServicesRepo.allServices();
//     response.when(success: (getAllServices) {
//       emit(AllServicesState.success(getAllServices));
//     }, 
//     failure: (error) {
//       emit(AllServicesState.error(error: error.apiErrorModel.message ?? ''));
//     }
//     );
//   }
// }