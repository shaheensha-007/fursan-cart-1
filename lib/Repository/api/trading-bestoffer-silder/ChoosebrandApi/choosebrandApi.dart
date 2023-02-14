import 'dart:convert';


import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:http/http.dart';

import '../../../../Ui/mainhome/Choosebrand.dart';
import '../../../modelclass/choosebrand.dart';
import '../../api_clinent.dart';


class ChoosebrandApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/brand/all';


  Future <List<ChoosebrandModel>> choosebrand() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return ChoosebrandModel.listFromJson(json.decode(response.body));
  }

}