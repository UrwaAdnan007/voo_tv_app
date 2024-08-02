class NotificationModel {
  String time;
  String image;
  String name;
  String comment;

  NotificationModel({
    required this.time,
    required this.image,
    required this.name,
    required this.comment,
  });
  @override
  String toString() {
    return 'Time :$time Name :$name Comment :$comment ';
  }
}
