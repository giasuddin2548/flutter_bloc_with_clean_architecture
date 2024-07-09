class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.userId, this.id, this.title, this.body});

  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  bool isValid() {
    return title != null && title!.isNotEmpty && body != null && body!.isNotEmpty;
  }

  void formatTitle() {
    if (title != null && title!.isNotEmpty) {
      title = title!.split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join(' ');
    }
  }

  bool containsKeyword(String keyword) {
    final lowerCaseKeyword = keyword.toLowerCase();
    return (title?.toLowerCase().contains(lowerCaseKeyword) ?? false) ||
        (body?.toLowerCase().contains(lowerCaseKeyword) ?? false);
  }
}
