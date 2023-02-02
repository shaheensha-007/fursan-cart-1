class Homemodelclass {
  Homemodelclass({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.bannerTitle,
    this.categoryId,
    this.tagsId,
    this.subCategoryId,
    this.banner,
    this.tag,
    this.category,
    this.subCategory,});
  static List<Homemodelclass> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => Homemodelclass.fromJson(value)).toList();
  }
  Homemodelclass.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    bannerTitle = json['bannerTitle'];
    categoryId = json['categoryId'];
    tagsId = json['tagsId'];
    subCategoryId = json['subCategoryId'];
    if (json['banner'] != null) {
      banner = [];
      json['banner'].forEach((v) {
        banner?.add(Banner.fromJson(v));
      });
    }
    tag = json['tag'];
    category = json['Category'];
    subCategory = json['subCategory'];
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? bannerTitle;
  dynamic categoryId;
  dynamic tagsId;
  dynamic subCategoryId;
  List<Banner>? banner;
  dynamic tag;
  dynamic category;
  dynamic subCategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['bannerTitle'] = bannerTitle;
    map['categoryId'] = categoryId;
    map['tagsId'] = tagsId;
    map['subCategoryId'] = subCategoryId;
    if (banner != null) {
      map['banner'] = banner?.map((v) => v.toJson()).toList();
    }
    map['tag'] = tag;
    map['Category'] = category;
    map['subCategory'] = subCategory;
    return map;
  }

}

class Banner {
  Banner({
    this.url,});

  Banner.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}


