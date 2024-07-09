class PostModel {
  PostModel({
      this.userId, 
      this.id, 
      this.title, 
      this.body,});

  PostModel.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
  int? userId;
  int? id;
  String? title;
  String? body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }

  bool isValid() {
    return title != null && title!.isNotEmpty && body != null && body!.isNotEmpty;
  }

  // Capitalize the first letter of each word in the title
  void formatTitle() {
    if (title != null && title!.isNotEmpty) {
      title = title!.split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join(' ');
    }
  }

  // Check if the post contains a specific keyword in the title or body
  bool containsKeyword(String keyword) {
    final lowerCaseKeyword = keyword.toLowerCase();
    return (title?.toLowerCase().contains(lowerCaseKeyword) ?? false) ||
        (body?.toLowerCase().contains(lowerCaseKeyword) ?? false);
  }

/*
  // Validate the post
  print('Is valid: ${post.isValid()}'); // Output: Is valid: true

  // Format the title
  post.formatTitle();
  print('Formatted title: ${post.title}'); // Output: Formatted title: Hello World

  // Check for a keyword
  print('Contains "hello": ${post.containsKeyword("hello")}'); // Output: Contains "hello": true

 */

}