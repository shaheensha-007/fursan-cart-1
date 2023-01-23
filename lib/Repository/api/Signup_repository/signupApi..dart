import 'dart:convert';


import 'package:fursancart/Repository/modelclass/usermodel.dart';
import 'package:http/http.dart';


import '../api_client.dart';


class SignupApi {


  ApiClient apiClient = ApiClient();
  String trendingpath = '/auth/local/user/sign-up';


  Future<Usermodel> signup(String email, String username,String password) async {
    var boby = {"email":email, "username":username,"password": password};
    print(boby);
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', boby);
print(response.body);
    return Usermodel.fromJson(jsonDecode(response.body));
  }

}