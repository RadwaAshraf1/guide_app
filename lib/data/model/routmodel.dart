class RouteModel {
  List<Routes>? routes;

  RouteModel({
    required this.routes,
  });

  RouteModel.fromJson(Map<String, dynamic> json) {
    if (json['Routes'] != null) {
      routes = <Routes>[];
      json['Routes'].forEach((v) {
        routes!.add(Routes.fromJson(v));
      });
    }
  }
}

class Routes {
  int? id;
  String? source;
  String? destination;
  String? nextStep;
  int? direction;
  int? distance;
  dynamic path;

  Routes(
      {this.id,
      this.source,
      this.destination,
      this.nextStep,
      this.direction,
      this.distance,
      this.path});

  Routes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    source = json['source'];
    destination = json['destination'];
    nextStep = json['next step'];
    direction = json['direction'];
    distance = json['distance'];
    path = json['path'];
  }
}
