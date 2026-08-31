class ProjectModel {
  String title;
  String desc;
  String imgUrl;
  List<String> tech;
  String? url;

  ProjectModel({
    required this.title,
    required this.desc,
    required this.tech,
    required this.imgUrl,
    this.url,
  });
}
