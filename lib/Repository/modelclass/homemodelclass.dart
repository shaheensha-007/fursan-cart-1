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
    tag = json['tag'] != null ? Tag.fromJson(json['tag']) : null;
    category = json['Category'];
    subCategory = json['subCategory'] != null ? SubCategory.fromJson(json['subCategory']) : null;
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? bannerTitle;
  dynamic categoryId;
  String? tagsId;
  String? subCategoryId;
  List<Banner>? banner;
  Tag? tag;
  dynamic category;
  SubCategory? subCategory;

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
    if (tag != null) {
      map['tag'] = tag?.toJson();
    }
    map['Category'] = category;
    if (subCategory != null) {
      map['subCategory'] = subCategory?.toJson();
    }
    return map;
  }

  static List<Homemodelclass> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => Homemodelclass.fromJson(value)).toList();
  }
}

class SubCategory {
  SubCategory({
      this.id, 
      this.products,});

  SubCategory.fromJson(dynamic json) {
    id = json['id'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }
  String? id;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Products {
  Products({
      this.id, 
      this.name, 
      this.rating, 
      this.price, 
      this.images,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    rating = json['rating'];
    price = json['price'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
  }
  String? id;
  String? name;
  int? rating;
  String? price;
  List<Images>? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['rating'] = rating;
    map['price'] = price;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Images {
  Images({
      this.url,});

  Images.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}

class Tag {
  Tag({
      this.name,});

  Tag.fromJson(dynamic json) {
    name = json['name'];
  }
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
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