import 'dart:convert';


import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:http/http.dart';

import '../../api_clinent.dart';


class TradingApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/product/images/';


  Future <List<TradingnowModelClass>> trading() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return TradingnowModelClass .listFromJson(jsonDecode(response.body));
  }

}