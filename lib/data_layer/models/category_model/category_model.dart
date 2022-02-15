
class CategoryModel {
  CategoryModel({
      this.id, 
      this.categoryName, 
      this.image,});

  CategoryModel.fromJson(dynamic json) {
    id = json['id'];
    categoryName = json['category_name'];
    image = json['image'];
  }
  int? id;
  String? categoryName;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_name'] = categoryName;
    map['image'] = image;
    return map;
  }

}