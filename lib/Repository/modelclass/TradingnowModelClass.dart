class TradingnowModel {
  TradingnowModel({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.name, 
      this.price, 
      this.description, 
      this.stock, 
      this.unit, 
      this.subId, 
      this.shopId, 
      this.brandsId, 
      this.status, 
      this.rating, 
      this.discountId, 
      this.wishlist, 
      this.tags, 
      this.discPerQtt, 
      this.brand, 
      this.discount, 
      this.images, 
      this.orders, 
      this.shop, 
      this.subCategory, 
      this.dicountAmount, 
      this.discPercent,});

  TradingnowModel.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    price = json['price'];
    description = json['description'];
    stock = json['stock'];
    unit = json['unit'];
    subId = json['subId'];
    shopId = json['shopId'];
    brandsId = json['brandsId'];
    status = json['status'];
    rating = json['rating'];
    discountId = json['discountId'];
    wishlist = json['Wishlist'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
    if (json['discPerQtt'] != null) {
      discPerQtt = [];
      json['discPerQtt'].forEach((v) {
        discPerQtt?.add(DiscPerQtt.fromJson(v));
      });
    }
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    discount = json['discount'] != null ? Discount.fromJson(json['discount']) : null;
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders?.add(Orders.fromJson(v));
      });
    }
    shop = json['shop'] != null ? Shop.fromJson(json['shop']) : null;
    subCategory = json['subCategory'] != null ? SubCategory.fromJson(json['subCategory']) : null;
    dicountAmount = json['dicountAmount'];
    discPercent = json['discPercent'];
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? price;
  String? description;
  int? stock;
  String? unit;
  String? subId;
  String? shopId;
  String? brandsId;
  String? status;
  int? rating;
  String? discountId;
  bool? wishlist;
  List<Tags>? tags;
  List<DiscPerQtt>? discPerQtt;
  Brand? brand;
  Discount? discount;
  List<Images>? images;
  List<Orders>? orders;
  Shop? shop;
  SubCategory? subCategory;
  String? dicountAmount;
  String? discPercent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['name'] = name;
    map['price'] = price;
    map['description'] = description;
    map['stock'] = stock;
    map['unit'] = unit;
    map['subId'] = subId;
    map['shopId'] = shopId;
    map['brandsId'] = brandsId;
    map['status'] = status;
    map['rating'] = rating;
    map['discountId'] = discountId;
    map['Wishlist'] = wishlist;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    if (discPerQtt != null) {
      map['discPerQtt'] = discPerQtt?.map((v) => v.toJson()).toList();
    }
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    if (discount != null) {
      map['discount'] = discount?.toJson();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    if (orders != null) {
      map['orders'] = orders?.map((v) => v.toJson()).toList();
    }
    if (shop != null) {
      map['shop'] = shop?.toJson();
    }
    if (subCategory != null) {
      map['subCategory'] = subCategory?.toJson();
    }
    map['dicountAmount'] = dicountAmount;
    map['discPercent'] = discPercent;
    return map;
  }
  static List<TradingnowModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => TradingnowModel.fromJson(value)).toList();
  }
}

class SubCategory {
  SubCategory({
      this.id, 
      this.name, 
      this.image, 
      this.category,});

  SubCategory.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }
  String? id;
  String? name;
  Image? image;
  Category? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    if (category != null) {
      map['category'] = category?.toJson();
    }
    return map;
  }

}

class Category {
  Category({
      this.id, 
      this.name, 
      this.image,});

  Category.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }
  String? id;
  String? name;
  Image? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    return map;
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





class Shop {
  Shop({
      this.id, 
      this.name,});

  Shop.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  String? id;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

}

class Orders {
  Orders({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.productName, 
      this.quantity, 
      this.unit, 
      this.totPrice, 
      this.prodId, 
      this.orderId, 
      this.dlvryId,});

  Orders.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    productName = json['productName'];
    quantity = json['quantity'];
    unit = json['unit'];
    totPrice = json['totPrice'];
    prodId = json['prodId'];
    orderId = json['orderId'];
    dlvryId = json['dlvryId'];
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? productName;
  int? quantity;
  String? unit;
  String? totPrice;
  String? prodId;
  String? orderId;
  dynamic dlvryId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['productName'] = productName;
    map['quantity'] = quantity;
    map['unit'] = unit;
    map['totPrice'] = totPrice;
    map['prodId'] = prodId;
    map['orderId'] = orderId;
    map['dlvryId'] = dlvryId;
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

class Discount {
  Discount({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.name, 
      this.desc, 
      this.discountPercent, 
      this.active,});

  Discount.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    desc = json['desc'];
    discountPercent = json['discount_percent'];
    active = json['active'];
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? desc;
  String? discountPercent;
  bool? active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['name'] = name;
    map['desc'] = desc;
    map['discount_percent'] = discountPercent;
    map['active'] = active;
    return map;
  }

}

class Brand {
  Brand({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.name,});

  Brand.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['name'] = name;
    return map;
  }

}

class DiscPerQtt {
  DiscPerQtt({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.qttFrom, 
      this.qttTo, 
      this.discPercent, 
      this.discFlatAmnt, 
      this.productsId,});

  DiscPerQtt.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    qttFrom = json['qttFrom'];
    qttTo = json['qttTo'];
    discPercent = json['discPercent'];
    discFlatAmnt = json['discFlatAmnt'];
    productsId = json['productsId'];
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  int? qttFrom;
  int? qttTo;
  String? discPercent;
  String? discFlatAmnt;
  String? productsId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['qttFrom'] = qttFrom;
    map['qttTo'] = qttTo;
    map['discPercent'] = discPercent;
    map['discFlatAmnt'] = discFlatAmnt;
    map['productsId'] = productsId;
    return map;
  }

}

class Tags {
  Tags({
      this.tag,});

  Tags.fromJson(dynamic json) {
    tag = json['tag'] != null ? Tag.fromJson(json['tag']) : null;
  }
  Tag? tag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (tag != null) {
      map['tag'] = tag?.toJson();
    }
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