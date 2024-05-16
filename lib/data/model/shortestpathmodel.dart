class ShortestPathModel {
  List<String>? path;
  String? instructions;

  ShortestPathModel({
    required this.path,
    required this.instructions,
  });

  ShortestPathModel.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    instructions = json['instructions'];
  }
}
