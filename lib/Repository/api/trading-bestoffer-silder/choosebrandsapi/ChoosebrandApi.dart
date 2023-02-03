

import 'dart:convert';

import 'package:http/http.dart';

import '../../../modelclass/choosebrandModelclass.dart';
import '../../api_clinent.dart';

class ChoosebrandApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/banner/all';


  Future <List<ChoosebrandModelclass>> choosebrand() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return ChoosebrandModelclass .listFromJson(jsonDecode(response.body));
  }


}