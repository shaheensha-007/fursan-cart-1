class ChoosebrandModelclass {
  ChoosebrandModelclass({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.image,});

  ChoosebrandModelclass.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    name = json['name'];
    image = json['image'] != null ? Image1.fromJson(json['image']) : null;
  }
  String? id;
  String? createdAt;
  String? updatedAt;
  String? name;
  Image1? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['name'] = name;
    if (image != null) {
      map['image'] = image?.toJson();
    }
    return map;
  }

  static List<ChoosebrandModelclass>? listFromJson(List<dynamic> json) {
    return json == null      ? []
        : json.map((value) => ChoosebrandModelclass.fromJson(value)).toList();}
//created item:

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

