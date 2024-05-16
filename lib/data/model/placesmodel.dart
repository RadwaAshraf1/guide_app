class PlacesModel {
  List<Places>? places;

  PlacesModel({required this.places});

  PlacesModel.fromJson(Map<String, dynamic> json) {
    if (json['places'] != null) {
      places = <Places>[];
      json['places'].forEach((v) {
        places!.add( Places.fromJson(v));
      });
    }
  }
}
class Places {
  int? placeId;
  String? placeName;
  int? regionId;
  String? guideWord;
  int? xCoordinate;
  int? yCoordinate;
  int? buildingId;

  Places(
      {this.placeId,
      this.placeName,
      this.regionId,
      this.guideWord,
      this.xCoordinate,
      this.yCoordinate,
      this.buildingId});

  Places.fromJson(Map<String, dynamic> json) {
    placeId = json['place id'];
    placeName = json['place name'];
    regionId = json['region id'];
    guideWord = json['guide word'];
    xCoordinate = json['x coordinate'];
    yCoordinate = json['y coordinate'];
    buildingId = json['building id'];
  }}