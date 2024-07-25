class AudioModel {
  String title;
  String image;
  String name;

  AudioModel({
    required this.title,
    required this.image,
    required this.name,
  });
  @override
  String toString() {
    return 'Title :$title Name :$name';
  }
}
