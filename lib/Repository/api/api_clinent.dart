import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';

import '../../main.dart';
import 'api_exception.dart';


class ApiClient {


  String token = "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJjbGRqeGd0eHgwMGVhenJzNmg1czB0MnNiIiwiZW1haWwiOiJzZXZtcGloaGZoZ29AZ21haWwuY29tdHljIiwiaWF0IjoxNjc1MTUwNjg3LCJleHAiOjE2NzU3NTU0ODd9.i5ULkTF5jb3gYl37XBz5cZI2bOCW1M7BC8S4GHWEcso";

  Future<Response> invokeAPI(String path, String method, Object? body) async {
    Map<String, String> headerParams = {
    };
    Response response;

    String url = basePath + path;
    print(url);

    final nullableHeaderParams = (headerParams.isEmpty) ? null : headerParams;

    switch (method) {
      case "POST":
        response = await post(Uri.parse(url), headers: {
          'content-Type': 'application/x-www-form-urlencoded',
          'Authorization': token
        }, body: body);
        break;
      case "PUT":
        response = await put(
            Uri.parse(url), headers: {'content-Type': 'application/json',},
            body: body);
        break;
      case "DELETE":
        response = await delete(Uri.parse(url), headers: nullableHeaderParams);
        break;
      case "POST_":
        response = await post(Uri.parse(url), headers: {}, body: body,);
        break;
      case "GET_":
        response = await get(Uri.parse(url), headers: { 'Accept': 'application/json','Content-Type': 'application/json','Authorization': token,},
          body: body,);
        break;
      default:
        response = await get(Uri.parse(url), headers: {


        });
    }

    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(
          message: _decodeBodyBytes(response), statusCode: response.statusCode);
    }
    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers['content-type'];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}