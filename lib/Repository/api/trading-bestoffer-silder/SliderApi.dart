import 'dart:convert';


import 'package:fursancart/Repository/modelclass/usermodel.dart';
import 'package:http/http.dart';

import '../../modelclass/BannerModelClass.dart';
import '../api_clinent.dart';


class SliderApi {


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/banner/all';


  Future <List<Homemodelclass>> slider() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return Homemodelclass .listFromJson(jsonDecode(response.body));
  }

}