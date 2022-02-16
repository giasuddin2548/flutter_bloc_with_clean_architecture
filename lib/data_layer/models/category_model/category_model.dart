class CategoryModel {
  CategoryModel({
      this.brandId, 
      this.brandName, 
      this.brandImage, 
      this.totalMobile,});

  CategoryModel.fromJson(dynamic json) {
    brandId = json['brand_id'];
    brandName = json['brand_name'];
    brandImage = json['brand_image'];
    totalMobile = json['total_mobile'];
  }
  String? brandId;
  String? brandName;
  String? brandImage;
  String? totalMobile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['brand_id'] = brandId;
    map['brand_name'] = brandName;
    map['brand_image'] = brandImage;
    map['total_mobile'] = totalMobile;
    return map;
  }

}