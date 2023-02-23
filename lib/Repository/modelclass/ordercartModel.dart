class OrdercartModel {
  OrdercartModel({
      this.product, 
      this.relatedProducts,});

  OrdercartModel.fromJson(dynamic json) {
    product = json['product'] != null ? Product.fromJson(json['product']) : null;
    if (json['relatedProducts'] != null) {
      relatedProducts = [];
      json['relatedProducts'].forEach((v) {
        relatedProducts?.add(RelatedProducts.fromJson(v));
      });
    }
  }
  Product? product;
  List<RelatedProducts>? relatedProducts;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (product != null) {
      map['product'] = product?.toJson();
    }
    if (relatedProducts != null) {
      map['relatedProducts'] = relatedProducts?.map((v) => v.toJson()).toList();
    }
    return map;
  }
  static List<OrdercartModel> listFromJson(List<dynamic> json) {
    return json == null
        ? []
        : json.map((value) => OrdercartModel.fromJson(value)).toList();
  }

}

class RelatedProducts {
  RelatedProducts({
      this.score, 
      this.id, 
      this.description, 
      this.price, 
      this.images, 
      this.tags, 
      this.category,});

  RelatedProducts.fromJson(dynamic json) {
    score = json['score'];
    id = json['id'];
    description = json['description'];
    price = json['price'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    category = json['category'];
  }
  double? score;
  String? id;
  String? description;
  String? price;
  List<Images>? images;
  List<String>? tags;
  String? category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['score'] = score;
    map['id'] = id;
    map['description'] = description;
    map['price'] = price;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['tags'] = tags;
    map['category'] = category;
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

class Product {
  Product({
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
      this.discountId, 
      this.referalBonus, 
      this.brand, 
      this.discPerQtt, 
      this.images, 
      this.discount, 
      this.orders, 
      this.shop, 
      this.tags, 
      this.subCategory, 
      this.category, 
      this.dicountAmount, 
      this.discPercent,});

  Product.fromJson(dynamic json) {
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
    discountId = json['discountId'];
    referalBonus = json['referalBonus'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    if (json['discPerQtt'] != null) {
      discPerQtt = [];
      json['discPerQtt'].forEach((v) {
        discPerQtt?.add(DiscPerQtt.fromJson(v));
      });
    }
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(v);
      });
    }
    discount = json['discount'] != null ? Discount.fromJson(json['discount']) : null;
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders?.add(Orders.fromJson(v));
      });
    }
    shop = json['shop'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    subCategory = json['subCategory'] != null ? SubCategory.fromJson(json['subCategory']) : null;
    category = json['category'];
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
  dynamic shopId;
  String? brandsId;
  String? status;
  String? discountId;
  dynamic referalBonus;
  Brand? brand;
  List<DiscPerQtt>? discPerQtt;
  List<dynamic>? images;
  Discount? discount;
  List<Orders>? orders;
  dynamic shop;
  List<String>? tags;
  SubCategory? subCategory;
  String? category;
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
    map['discountId'] = discountId;
    map['referalBonus'] = referalBonus;
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    if (discPerQtt != null) {
      map['discPerQtt'] = discPerQtt?.map((v) => v.toJson()).toList();
    }
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    if (discount != null) {
      map['discount'] = discount?.toJson();
    }
    if (orders != null) {
      map['orders'] = orders?.map((v) => v.toJson()).toList();
    }
    map['shop'] = shop;
    map['tags'] = tags;
    if (subCategory != null) {
      map['subCategory'] = subCategory?.toJson();
    }
    map['category'] = category;
    map['dicountAmount'] = dicountAmount;
    map['discPercent'] = discPercent;
    return map;
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
    image = json['image'] != null ? Image1.fromJson(json['image']) : null;
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
  }
  String? id;
  String? name;
  Image1? image;
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
    image = json['image'] != null ? Image1.fromJson(json['image']) : null;
  }
  String? id;
  String? name;
  Image1? image;

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
  String? dlvryId;

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

class DiscPerQtt {
  DiscPerQtt({
      this.qttFrom, 
      this.qttTo, 
      this.discFlatAmnt, 
      this.discPercent,});

  DiscPerQtt.fromJson(dynamic json) {
    qttFrom = json['qttFrom'];
    qttTo = json['qttTo'];
    discFlatAmnt = json['discFlatAmnt'];
    discPercent = json['discPercent'];
  }
  int? qttFrom;
  int? qttTo;
  String? discFlatAmnt;
  String? discPercent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['qttFrom'] = qttFrom;
    map['qttTo'] = qttTo;
    map['discFlatAmnt'] = discFlatAmnt;
    map['discPercent'] = discPercent;
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