import 'dart:convert';


import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:http/http.dart';

import '../api_clinent.dart';


class SliderApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/product/all?tag=trending';


  Future <List<TradingnowModelClass>> slider() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return TradingnowModelClass .listFromJson(jsonDecode(response.body));
  }

}