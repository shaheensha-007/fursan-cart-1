class MaincategoryModelclass {
  MaincategoryModelclass({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.name, 
      this.description, 
      this.image, 
      this.subCategories,});

  MaincategoryModelclass.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    description = json['description'];
    image = json['image'] != null ? Image1.fromJson(json['image']) : null;
    if (json['subCategories'] != null) {
      subCategories = [];
      json['subCategories'].forEach((v) {
        subCategories?.add(SubCategories.fromJson(v));
      });
    }
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? description;
  Image1? image;
  List<SubCategories>? subCategories;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['name'] = name;
    map['description'] = description;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    if (subCategories != null) {
      map['subCategories'] = subCategories?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  static List<MaincategoryModelclass> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => MaincategoryModelclass.fromJson(value)).toList();
  }

}

class SubCategories {
  SubCategories({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.name, 
      this.description, 
      this.catId, 
      this.image,});

  SubCategories.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    description = json['description'];
    catId = json['catId'];
    image = json['image'] != null ? Image1.fromJson(json['image']) : null;
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? description;
  String? catId;
  Image1? image;

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

}

class Image1 {
  Image1({
      this.url,});

  Image1.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }


}

class Image2 {
  Image2({
      this.url,});

  Image2.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}