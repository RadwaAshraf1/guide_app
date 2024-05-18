class OneService {
  Data? data;
  OneService({required this.data,});

  OneService.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }
}

class Data {
  String? name;
  int? placeId;
  String? description;

  Data({this.name, this.placeId, this.description});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    placeId = json['place_id'];
    description = json['description'];
  }
}