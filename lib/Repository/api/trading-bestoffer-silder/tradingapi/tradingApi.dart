import 'dart:convert';


import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:http/http.dart';

import '../../api_clinent.dart';


class TradingApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/product/all?tag=trending';


  Future <List<TradingnowModel>> trading() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return TradingnowModel .listFromJson(jsonDecode(response.body));
  }

}