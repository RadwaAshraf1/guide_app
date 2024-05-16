class RegionModel {
  List<Regions>? regions;
 
  RegionModel({required this.regions,});

  RegionModel.fromJson(Map<String, dynamic> json) {
    if (json['Regions'] != null) {
      regions = <Regions>[];
      json['Regions'].forEach((v) {
        regions!.add(Regions.fromJson(v));
      });
    }
  }
}

class Regions {
  int? regionId;
  String? regionName;
  int? xCoordinate;
  int? yCoordinate;

  Regions({
   required this.regionId,
   required this.regionName,
   required this.xCoordinate,
   required this.yCoordinate,
  });

  Regions.fromJson(Map<String, dynamic> json) {
    regionId = json['region id'];
    regionName = json['region name'];
    xCoordinate = json['x coordinate'];
    yCoordinate = json['y coordinate'];
  }
}
