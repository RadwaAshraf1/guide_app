class Service {
  String? name;
  int? placeId;
  String? description;

  Service({this.name, this.placeId, this.description});

  Service.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    placeId = json['place_id'];
    description = json['description'];
  }


}