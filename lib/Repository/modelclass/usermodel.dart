class Usermodel {
  Usermodel({
      this.tokens, 
      this.res,});

  Usermodel.fromJson(dynamic json) {
    tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
    res = json['res'] != null ? Res.fromJson(json['res']) : null;
  }
  Tokens? tokens;
  Res? res;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (tokens != null) {
      map['tokens'] = tokens?.toJson();
    }
    if (res != null) {
      map['res'] = res?.toJson();
    }
    return map;
  }

}

class Res {
  Res({
      this.id, 
      this.email, 
      this.role, 
      this.username, 
      this.blocked,});

  Res.fromJson(dynamic json) {
    id = json['id'];
    email = json['email'];
    role = json['role'];
    username = json['username'];
    blocked = json['blocked'];
  }
  String? id;
  String? email;
  int? role;
  String? username;
  bool? blocked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['role'] = role;
    map['username'] = username;
    map['blocked'] = blocked;
    return map;
  }

}

class Tokens {
  Tokens({
      this.accessToken, 
      this.refreshToken,});

  Tokens.fromJson(dynamic json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
  }
  String? accessToken;
  String? refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    return map;
  }

}