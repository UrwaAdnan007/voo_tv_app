class VideoModel {
  String title;
  String image;
  String name;
  String duraton;
  String newTag;

  VideoModel({
    required this.title,
    required this.image,
    required this.name,
    required this.duraton,
    required this.newTag,
  });
  @override
  String toString() {
    return 'Title :$title Name :$name TimeDuration :$duraton new :$newTag';
  }
}
