class SubcategoryModel {
  SubcategoryModel({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.name, 
      this.description, 
      this.catId, 
      this.image,});

  SubcategoryModel.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    description = json['description'];
    catId = json['catId'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? description;
  String? catId;
  Image? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['name'] = name;
    map['description'] = description;
    map['catId'] = catId;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    return map;
  }
  static List<SubcategoryModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => SubcategoryModel.fromJson(value)).toList();
  }


}

class Image {
  Image({
      this.url,});

  Image.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}