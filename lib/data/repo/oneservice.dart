import 'package:guide/data/api/oneservice.dart';
import 'package:guide/data/model/oneservice.dart';

class OneServiceRepo{
   final OneServiceApi oneServiceApi ;

  OneServiceRepo({required this.oneServiceApi});

   Future<List<OneService>> fetchData() async {
    final service = await oneServiceApi.fetchData();
    return service.map((service) => OneService.fromJson(service)).toList();
   }
}