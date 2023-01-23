import 'dart:convert';


import 'package:fursancart/Repository/modelclass/usermodel.dart';
import 'package:http/http.dart';


import '../api_client.dart';


class WelcomeApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/auth/local/user/login';


  Future<Usermodel> login(String email,String password) async {
    var boby = {"email":email,"password": password};
    print(boby);
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', boby);
    print(response.body);
    return Usermodel.fromJson(jsonDecode(response.body));
  }

}