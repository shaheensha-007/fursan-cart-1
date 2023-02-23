import 'dart:convert';



import 'package:fursancart/Repository/modelclass/ordercartModel.dart';
import 'package:fursancart/Ui/ordercart.dart';
import 'package:http/http.dart';

import '../../../../Ui/mainhome/Choosebrand.dart';
import '../api_clinent.dart';


class OrdercartApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/category/all';


  Future <List<OrdercartModel>> Ordercart() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return OrdercartModel.listFromJson(json.decode(response.body));
  }

}