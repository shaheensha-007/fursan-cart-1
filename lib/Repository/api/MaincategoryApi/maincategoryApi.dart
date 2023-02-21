import 'dart:convert';


import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:fursancart/Repository/modelclass/maincategoryModelclass.dart';
import 'package:fursancart/Ui/maincategory.dart';
import 'package:http/http.dart';

import '../../../../Ui/mainhome/Choosebrand.dart';
import '../api_clinent.dart';


class MaincategoryApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/category/all';


  Future <List<MaincategoryModelclass>> Maincategory() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return MaincategoryModelclass.listFromJson(json.decode(response.body));
  }

}