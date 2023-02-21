import 'dart:convert';


import 'package:fursancart/Repository/modelclass/TradingnowModelClass.dart';
import 'package:fursancart/Repository/modelclass/maincategoryModelclass.dart';
import 'package:fursancart/Ui/maincategory.dart';
import 'package:http/http.dart';

import '../../../../Ui/mainhome/Choosebrand.dart';
import '../../modelclass/subcategoryModel.dart';
import '../api_clinent.dart';


class SubcategoryApi{


  ApiClient  apiClient = ApiClient();
  String trendingpath = '/category/all';


  Future <List<SubcategoryModel>> Maincategory() async {
    Response response = await apiClient.invokeAPI(trendingpath, "GET_",null);
    print(response.body);
    return SubcategoryModel.listFromJson(json.decode(response.body));
  }

}