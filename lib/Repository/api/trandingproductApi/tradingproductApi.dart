import 'dart:convert';

import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:fursancart/Repository/modelclass/tradingproductModelclass.dart';
import 'package:http/http.dart';

import '../api_clinent.dart';


class TradingproductApi {


  ApiClient apiClient = ApiClient();
  String trendingpath = '/brand/clcpoz5js000qzrwsb6tmvu18';


  Future <List<TradingproductModelclass>?> tradingproduct() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_", null);
    print(response.body);
    return TradingproductModelclass.listFromJson(jsonDecode(response.body));
  }



}
