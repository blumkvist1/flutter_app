class Post {
  late int userId;
  late int id;
  late String title;
  late String body;

  Post.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    userId = json["userId"];
    title = json["title"];
    body = json["body"];
  }
}
