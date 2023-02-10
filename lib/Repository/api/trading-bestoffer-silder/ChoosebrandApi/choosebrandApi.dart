import 'dart:convert';


import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:fursancart/Repository/modelclass/choosebrandModelclass.dart';
import 'package:http/http.dart';

import '../../api_clinent.dart';


class ChoosebrandApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/product/all?tag=trending';


  Future <List<ChoosebrandModelclass>?> choosebrand() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return ChoosebrandModelclass.listFromJson(jsonDecode(response.body));
  }

}