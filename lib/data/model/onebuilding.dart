class OneBuilding {
  Data? data;

  OneBuilding({required this.data});

  OneBuilding.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  String? buidingName;
  String? address;
  String? longitude;
  String? description;
  String? latitude;
  String? photo;

  Data(
      {this.buidingName,
      this.address,
      this.longitude,
      this.description,
      this.latitude,
      this.photo});

  Data.fromJson(Map<String, dynamic> json) {
    buidingName = json['buiding name'];
    address = json['address'];
    longitude = json['longitude'];
    description = json['description'];
    latitude = json['latitude'];
    photo = json['photo'];
  }
}
